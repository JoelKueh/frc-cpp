
#include <iostream>

float celcius(float fahrenheit) {
    return (fahrenheit - 32) * 5 / 9;
}

int main() {
    float result = celcius(10.0);
    std::cout << "10.0 deg F = " << result << " deg C" << std::endl;
}
