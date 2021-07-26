//
// Created by elyas on 25/07/2021.
//

#ifndef VISITLOG_VISITOR_H
#define VISITLOG_VISITOR_H

#include <string>
#include <vector>

class visitor {
    private:
        const std::string name;
        const int timeIn, timeOut;

    public:
        visitor(std::string& name, int& timeIn, int& timeOut) :
            name(name), timeIn(timeIn), timeOut(timeOut) {

        }
        ~visitor() = default;

        std::string toString() const {
            return name + " (entered at " + std::to_string(timeIn) + ", left at " + std::to_string(timeOut) + ")";
        }

    const std::string& getName() const {
        return name;
    }

    const int& getTimeIn() const {
        return timeIn;
    }

    const int& getTimeOut() const {
        return timeOut;
    }
};

bool compareVisitors(const visitor& lhs, const visitor& rhs);

void sortVisitors(std::vector<visitor>& visitors);

#endif //VISITLOG_VISITOR_H
