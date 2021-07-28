//
// Created by elyas on 25/07/2021.
//

#ifndef VISITLOG_VISITOR_H
#define VISITLOG_VISITOR_H

#include <string>
#include <vector>

// This class is designed for easy storage and access of visitor information
class visitor {
    private:
        std::string name;
        int timeIn, timeOut;

    public:
        // Constructor initialises private member variables
        visitor(std::string& name, int& timeIn, int& timeOut) :
            name(name), timeIn(timeIn), timeOut(timeOut) {}

        ~visitor() = default; // Default destructor

        // Outputs the visitor's information (task 1 format)
        std::string toString() const {
            return name + " (entered at " + std::to_string(timeIn) + ", left at " + std::to_string(timeOut) + ")";
        }

    // Only getters made, setters are unnecessary for this use case
    const std::string& getName() const { return name; }
    const int& getTimeIn() const { return timeIn; }
    const int& getTimeOut() const { return timeOut; }
};

// References methods in 'visitor.cpp'
bool compareVisitors(const visitor& lhs, const visitor& rhs);
void sortVisitors(std::vector<visitor>& visitors);

#endif //VISITLOG_VISITOR_H
