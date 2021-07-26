//
// Created by elyas on 25/07/2021.
//

#include "visitor.h"
#include <algorithm>
#include <string>

using namespace std;

bool compareVisitors(const visitor& lhs, const visitor& rhs) {
    return lhs.getName() < rhs.getName();
}

void sortVisitors(std::vector<visitor>& visitors) {
    sort(visitors.begin(), visitors.end(), compareVisitors);
}