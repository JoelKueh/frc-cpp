
#include <iostream>

float killometers(float yards) {
    return yards * 0.0009144;
}

int main() {
    float result = killometers(1000);
    std::cout << "1000 yards = " << result << " killometers" << std::endl;
}
