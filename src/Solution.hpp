#pragma once

#include <iostream>
#include <vector>

struct Solution
{
    bool isValid = false;
    std::vector<int> centers; /* Vertices in which vaccinations centers are constructed. */

    friend std::ostream& operator<<(std::ostream& out, const Solution& solution)
    {
        for (int index = 0; index < solution.centers.size() - 1; ++index)
        {
            out << solution.centers[index] << ", ";
        }

        out << solution.centers[solution.centers.size() - 1] << std::endl;

        return out;
    }
};