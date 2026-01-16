
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

#slide(title: "Git", outlined: true)[
  - The last really important tool at your disposal as a programmer is Git.
  - Git tracks all of the changes that you make to your document over time in "commits".
  - Git also lets multiple people work on a project together by allowing people to branch off from a
    commit and "merge" together later.
  #figure(
    image("./images/git_graph.png", width: 80%),
    caption: [Example of two branches off of a single commit in git.]
  )
]

#slide(title: "Git Usage")[
  - Git is relatively easy to use.
  - I recommend that you look at this tutorial for using git within VSCode (our C++ editor).
    - https://code.visualstudio.com/docs/sourcecontrol/quickstart
  - A brief overview:
    1. Make changes to your files as you would normally.
    2. When you are satisfied with your changes you stage them for committing.
    3. You can "commit" your changes to save them.
       - If something goes wrong, you can always go back to any previous commit.
    4. If you are working on a project collaboratively, you can share these commits.
]
