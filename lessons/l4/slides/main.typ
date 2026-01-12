
#import "@preview/typslides:1.3.0": *
#import "@preview/fletcher:0.5.8" as fletcher: diagram, node, edge
#import fletcher.shapes: house, hexagon
#let colors = (olive, yellow, eastern)

// Project configuration
#show: typslides.with(
  ratio: "16-9",
  theme: rgb("002d0d"),
  font: "Fira Sans",
  font-size: 20pt,
  link-style: "color",
  show-progress: true,
)

// The front slide is the first slide of your presentation
#front-slide(
  title: "Intro to C++ for FRC: Lesson 4",
  subtitle: [],
  authors: "Joel Kuehne",
  info: [#link("https://github.com/JoelKueh/frc-cpp")],
)

#table-of-contents()

#slide(title: "The Tools of the Trade", outlined: true)[
  - The purpose of this lesson is to introduce a couple of programming resources you will need when
    you work on code for FRC.
  - These tools are as follows:
    1. WPILib Documentation: https://docs.wpilib.org/en/stable/index.html
    2. WPILib C++ Reference: https://github.wpilib.org/allwpilib/docs/release/cpp/index.html
    3. Visual Studio Code: https://code.visualstudio.com/
    4. Git: https://git-scm.com/
]

#slide(title: "WPILib", outlined: true)[
  - WPILib is a library that contains a bunch of useful tools for working with FRC robots.
  - WPILib simplifies motor control, controller input, and driving to simple function calls.
  - Almost everything that you do in FRC will use WPILib in some way.
    - It is a good idea to be very familiar with the documentation.
  - Good High Level Overview: https://docs.wpilib.org/en/stable/index.html
  - Detailed Information on Every Function: https://github.wpilib.org/allwpilib/docs/release/cpp/index.html
]

#slide(title: "Visual Studio Code", outlined: true)[
  - I'm not going to bother rewriting good materials, here is the installation guide.
    - https://docs.wpilib.org/en/stable/docs/zero-to-robot/step-2/wpilib-setup.html
]

#slide(title: "Example 1: Reusable Printing Function")[
  - This example is simple, but I think it gets the idea across.
  - You can use functions to section off logic to be reused.
  ```cpp
  void print_age(int age) {
    std::cout << "Your age is: " << age << std::endl;
  }

  int main() {
    print_age(23); // Outputs "Your age is: 23"
    print_age(15); // Outputs "Your age is: 15"
    print_age(18); // Outputs "Your age is: 18"
    return 0;
  }
  ```
]

#slide(title: "Exercise 1: Stopping Distance")[
  - The stopping distance of a car can be modeled by the equation $d = K * v^2$.
    - $d$ is the distance, $v$ is velocity, and $K$ is a constant.
  - For a particular car, with distance $d$ in feet and velocity $v$ in MPH, the constant K is $1/4$.
  - Write a function that takes the distance to an object in feet and the speed of the car in MPH,
    and print whether or not the car will collide with the object.
  - Boilerplate code is below.

  ```cpp
  #include <iostream>

  float test_collision(float distance, float speed) {
  }

  int main() {
    test_collision(80.0, 70.0);
    test_collision(200.0, 40.0);
  }
  ```
]

#slide(title: "Exercise 1: Stopping Distance")[
  - This exercise is intended to be a step up from the previous ones.
  - Remember that $K = 0.25$ for our problem.
  - Break the problem up into pieces.
    - How are you going to write the equation $d = K * v^2$ in C++?
    - There isn't an operator in C++ for raising a number to a power (no squaring operator) so you
      will have to implement it yourself. How will you do this?
    - How are you going to check the distance?
    - How will you print the result?
]

#slide(title: "A Step Back", outlined: true)[
  - This marks the end of the beginning of this course.
  - At this point, I hope that you all have a pretty good idea of general programming topics.
  - Variables, functions, conditions, etc...
  - From this point on, I hope that you will keep up with the tutorials in
    https://www.geeksforgeeks.org/cpp/c-plus-plus/. I don't have anything specific for you to
    practice, but you all should go over the sections that you don't remember again, and condinue to
    use it as a reference when you need it.
]

