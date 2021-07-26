#include <iostream>

using namespace std;

#include "visitor.h"
#include <vector>
#include <string>
#include <fstream>
#include <algorithm>

int main() {
    vector<visitor> visitors;

    ifstream visits("visits.txt");
    ifstream times("times.txt");

    string name;
    int timeIn, timeOut;
    bool inBuilding;
    while (visits >> timeIn >> timeOut >> name) {
        if (timeIn < timeOut) {
            inBuilding = false;
            for (visitor &v : visitors) {
                if (v.getName() == name && (timeOut >= v.getTimeIn() && v.getTimeOut() >= timeIn)) {
                    cout << "\nOverlap error: " << endl;
                    cout << "1) " + v.toString() << endl;
                    cout << "2) " + name + " (entered at " + to_string(timeIn) + ", left at " + to_string(timeOut) + ")\n\n";
                    inBuilding = true;
                }
            }
            if (!inBuilding) visitors.emplace_back(name, timeIn, timeOut);
        }
    }

    for (visitor& v : visitors) cout << v.toString();
    sortVisitors(visitors);
    for (visitor& v : visitors) cout << v.toString();

    int max[2] = {0,0};
    int time;
    while (times >> time) {
        vector<visitor> temp;
        for (visitor& v : visitors) {
            if (v.getTimeIn() <= time && time <= v.getTimeOut()) {
                temp.push_back(v);
            }
        }

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

        for (visitor& v : temp) cout << "   " + v.toString() << endl;

        if (temp.size() > max[0]) {
            max[0] = temp.size();
            max[1] = time;
        }
    }

    switch (max[0]) {
        case 0:
            cout << "\nThere were no people present at time " + to_string(max[1]) << endl;
            break;
        case 1:
            cout << "\nThere was one person present at time " + to_string(max[1]) << endl;
            break;
        default:
            cout << "\nThere were " + to_string(max[0]) +
                    " people present at time " + to_string(max[1]) << endl;
    }
}