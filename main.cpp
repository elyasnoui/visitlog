#include <iostream>
#include "visitor.h"
#include <vector>
#include <string>
#include <fstream>

using namespace std;

int main() {
    cout << endl;  // Just for output clarity
    vector<visitor> visitors;

    ifstream visits("visits.txt");
    ifstream times("times.txt");

    // Reads the 'visits.txt' file and records the data as variables
    string name;
    int timeIn, timeOut;
    int maxTime = 0;
    bool inBuilding;
    while (visits >> timeIn >> timeOut >> name) {

        // Ensures the entry is valid
        if (timeIn < timeOut) {
            inBuilding = false;

            // Reads and compares every visitor already in the vector, and compares to see if the visitor already has an overlapping time
            for (visitor &v : visitors) {
                if (v.getName() == name && (timeOut >= v.getTimeIn() && v.getTimeOut() >= timeIn)) {
                    cout << "\nOverlap error: " << endl;
                    cout << "1) " + v.toString() << endl;
                    cout << "2) " + name + " (entered at " + to_string(timeIn) + ", left at " + to_string(timeOut) + ")\n\n";
                    inBuilding = true;
                    break;
                }
            }

            // If there's no overlap, create another instance of 'visitor' and store in the vector
            if (!inBuilding) {
                visitors.emplace_back(name, timeIn, timeOut);

                // Keeps track of the time the last visitor leaves; this is used for task 2
                if (timeOut > maxTime) maxTime = timeOut;
            }
        }
    }

    // Sorting vector of visitors in alphabetical order based on their name
    sortVisitors(visitors);

    // Task 1: Reads from 'times.txt' file and iterates through the lines
    int time;
    while (times >> time) {
        vector<visitor> temp;

        // Loops through all visitors and stores the visitors that were present in the building during the selected time
        for (visitor& v : visitors)
            if (v.getTimeIn() <= time && time <= v.getTimeOut())
                temp.push_back(v);

        // Depending on the number of visitors present, structures the output sentence accordingly
        switch (temp.size()) {
            case 0:
                cout << "There were no people present at time " + to_string(time) << endl;
                break;
            case 1:
                cout << "There was one person present at time " + to_string(time) << endl;
                break;
            default:
                cout << "There were " + to_string(temp.size()) +
                        " people present at time " + to_string(time) << endl;
        }

        // Outputs all visitors present in the building
        for (visitor& v : temp)
            cout << "   " + v.toString() << endl;
    }

    // Task 2: Iterates over visitors and outputs the time range of when the most visitors were present
    int max[3] = {0,0,0};  // max[0] = minimum time, max[1] = number of visitors, max[2] = maximum time
    for (int i=0; i<=maxTime; i++) {
        vector<visitor> temp;

        // Temporarily logs ever visitor present at the current time (i)
        for (visitor& v : visitors)
            if (v.getTimeIn() <= i && i <= v.getTimeOut())
                temp.push_back(v);

        // Tracks the size of people in temporary list and logs the minimum time
        if (temp.size() > max[1]) {
            max[0] = i;
            max[1] = temp.size();
        }

        // Tracks the maximum time that the most visitors are present in
        if (temp.size() == max[1])
            max[2] = i;
    }

    // Depending on the number of visitors present, structures the output sentence accordingly
    switch (max[1]) {
        case 0:
            cout << "\nThere were no people present at time " + to_string(max[2]) << "\n\n";
            break;
        case 1:
            cout << "\nThere was one person present from the time " +
                    to_string(max[0]) + " to " + to_string(max[2]) << "\n\n";
            break;
        default:
            cout << "\nThere were " + to_string(max[1]) + " people present from the time " +
                    to_string(max[0]) + " to " + to_string(max[2]) << "\n\n";
    }

    // Task 3: Iterates through already sorted list (line 49) and calculates sum of time individual visitors spent in building
    int temp;
    for (int i=0; i<visitors.size(); i++) {
        visitor v1 = visitors.at(i);

        // Calculates sum of time spent inside and checks if the next visitor in list is the same person
        temp = v1.getTimeOut() - v1.getTimeIn();
        while (i+1 != visitors.size()) {
            visitor v2 = visitors.at(i+1);

            // Adds the next visitor's time if the name matches
            if (v1.getName() == v2.getName()) {
                temp += v2.getTimeOut() - v2.getTimeIn();
                i++;
            }

            else break;  // Breaks while loop if name doesn't match, avoids unnecessary computation
        }

        // Outputs visitor's name and sum of time spent in building
        cout << v1.getName() + " " + to_string(temp) << endl;
    }
}