
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
  title: "Intro to C++ for FRC: Lesson 1",
  subtitle: [],
  authors: "Joel Kuehne",
  info: [#link("https://github.com/JoelKueh/frc-cpp")],
)

#table-of-contents()

#slide(title: "About this Course", outlined: true)[
  - This course is an interactive introduction to C++ for FRC.
  - Interspersed with "lecture" style content are real-world *EXAMPLES*.
  - Additionally, a number of *EXCERSIZES* are prepared that you should do yourself.
    - You can write C++ online here: https://www.onlinegdb.com/online_c++_compiler 
      #footnote[Online C++ Compiler: https://www.onlinegdb.com/online_c++_compiler]
    - As we get further along, I will introduce more tools for you to use.
]

#slide(title: "Programming as Logic", outlined: true)[
  - Programming, at its root, is a means of turning complex logic into a series of statments that can be interpreted by a computer.
  - The basic design flow for a program is as follows.
    1. Start with a task you want to automate.
    2. Break that task into a series of smaller steps (Problem Solving).
    3. Translate those smaller steps into a computer language (Code Writing).
    4. Test the resulting program and fix all of the errors (Debugging).

    #set align(center)
    #diagram(
      edge-stroke: 1pt,
      node-corner-radius: 5pt,
      edge-corner-radius: 8pt,
      mark-scale: 80%,

      node((0,0), [Task], fill: colors.at(0)),
      node((3,0), [Step Sequence], fill: colors.at(1)),
      node((6,0), [Program], fill: colors.at(2), shape: fletcher.shapes.hexagon),

      edge((0,0), "r,r,r", "-}>", [Problem Solving]),
      edge((3,0), "r,r,r", "-}>", [Code Writing]),
      edge((6,0), "d,l,l,l,u", "-}>", [Debugging]),
    )
]

#slide(title: "Programming as Math", outlined: true)[
  - Programming shares a lot of similarities with math.
  - We compare computer programs programming to functions in math.
  - Functions have inputs, outputs, and some "process" that maps inputs to outputs.
    - This is true for both math and programming.

  #set align(center)
  #diagram(
    edge-stroke: 1pt,
    node-corner-radius: 5pt,
    edge-corner-radius: 8pt,
    mark-scale: 80%,

    node((0,0), [Inputs], fill: colors.at(0)),
    node((3,0), [Processing], fill: colors.at(1)),
    node((6,0), [Outputs], fill: colors.at(2), shape: fletcher.shapes.hexagon),

    edge((0,0), "r,r,r", "-}>"),
    edge((3,0), "r,r,r", "-}>"),
  )


  #line(length: 100%)
  #cols(columsn: (auto, auto, auto), gutter: 0em)[
    $
    f(x) = 10 x + 13.3
    $
  ][
    Translates to...
  ][
    ```cpp
    float f(float x) {
      return 10.0 * x + 13.3;
    }
    ```
  ]
]

#slide(title: "Example 1: Fahrenheit to Celsius")[
  1. Start with the logic that we want to implement.
     - Fahrenheit can be converted to Celsius using the following equation.
     $ C(f) = (f - 32) dot 5/9 $
  2. Convert the logic function into a series of smaller steps
     - This doesn't really apply here, one equation is enough to get the job done.
  3. Translate the steps into computer language.
     - ```cpp return (f - 32) * 5/9;```
  4. Run the computer program and debug it.

  #pagebreak()
  Here is the completed code for the example. For now, you should ignore syntax details. These will
  be discussed further in the next lesson on syntax and data types.

  ```cpp
  float celcius(float fahrenheit) {
    return (fahrenheit - 32) * 5 / 9;
  }
  ```
]


#slide(title: "Excersise 1: Yards to Killometers")[
  - How about you try one yourself now.
  - We will be translating from Yards to Killometers.
  - You can run the code that you write in
    https://www.onlinegdb.com/online_c++_compiler.
  - Boilerplate code is provided for you on the next slide.
    - I recommend that you copy and paste the code on the following slide, then fill out
      the line that is marked "*\<WRITE YOUR CODE HERE\>*"
    - I will explain this code further in the next lesson.

  - *HINTS*
    - I don't remember how to convert yards to killometers, and I bet you don't either.
      *LOOK IT UP*, Googling is a very important part of programming.
    - All you need to write is a single line. If you can't get it, we'll discuss further in lesson 2.

  #pagebreak()
  ```cpp
  #include <iostream>

  // This is a function that should convert yards to killometers.
  float killometers(float yards) {
    return <WRITE YOUR CODE HERE>;
  }

  // This is the entrypoint of our application, we start executing from here.
  int main() {
    // This line calls the function above and stores the output in "result".
    float result = killometers(1000);
    std::cout << "1000 yards = " << result << " killometers" << std::endl;
    std::cout <<
  }
  ```
]
