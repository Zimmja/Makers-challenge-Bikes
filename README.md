# Boris Bikes

As part of the Week 1 challenge at Makers Academy, we were presented with the following coding challenge:

Let's go back several years, to the days when there were no Boris Bikes. Transport for London, the body responsible for delivery of a new bike system, come to you with a plan: a network of docking stations and bikes that anyone can use. They want you to build a program that will emulate all the docking stations, bikes, and infrastructure (repair staff, and so on) required to make their dream a reality.

To help structure your work, here are 22 challenges. They all build on one another. They require you to research things, to get stuck, and to find your own solutions. This is on purpose. A developer is a 'knowledge worker' - someone who will spend the majority of their time researching and learning how to solve problems.

### Challenges 1 - 10

These challenges were completed with **Luke Carney**.

#### Challenge 1 - initiating repositories
A git repository was initiated and linked to local folders.

#### Challenge 2 - converting user stories into a plan
We were presented with the following user stories:

Story 1:
*As a person,*
*So that I can use a bike,*
*I'd like a docking station to release a bike.*

Story 2:
*As a person,*
*So that I can use a good bike,*
*I'd like to see if a bike is working.*

We laid out the relevant elements in a table to represent functionality:
| Objects           | Messages          |
|:-----------------:|:-----------------:|
| person            | use_bike          |
| bike              | is_working?       |
| docking_station   | release_bike      |

We used Google Sheets to create a diagram of a Domain Model based on this table.
We continued to reference this Domain Model throughout the project.

#### Challenge 3 and 4: examing error messages
- In irb, attempted to call an iteration of a non-existent class, DockingStation
- Examined and discussed the errors presented in the stack trace; proposed solutions

#### Challenge 5 - 10: writing code with rspec
- Initiated rspec
- Created spec.rb and .rb files for testing and code-writing (seperate spec.rb and .rb files created for separate classes)
- Linked seperate .rb files with "require_relative"; linked spec.rb files to .rb files with "require"
- With files setup, we wrote spec.rb tests followed by code to pass these tests up to the point of producing passable "release_bike" and "is_working?" methods
- Checked usability with irb throughout (even with error messages anticipated), examing error messages as we worked through the challenges

### Challenges 11 - 13

These challenges were completed with **Ben Dowsett**.
Commits pulled from Ben's repository.

- Created rspec tests involving functions with parameters
- Created rspec tests to monitor for errors

### Challenges 14 - 17

These challenges were completed with **Simon Jacobs** and **Jacob Hanrahan**.
Commits pulled from Simon's repository.

- Using TDD and pair programming, updated docking_station to store up to a set capacity of bikes, with a default value that could be overwritten on initiation
- Explored the Single Repository Principle; updated code to fit more in-line with it

### Challenges 18 - 20

These challenges were completed solo.

### Challenge 18 - dealing with broken bikes
Using TDD, implemented x3 new user stories:

Story 1:
*As a member of the public,*
*So that I reduce the chance of getting a broken bike in future,*
*I'd like to report a bike as broken when I return it.*

Story 2:
*As a maintainer of the system,*
*So that I can manage broken bikes and not disappoint users,*
*I'd like docking stations not to release broken bikes.*

Story 2:
*As a maintainer of the system,*
*So that I can manage broken bikes and not disappoint users,*
*I'd like docking stations to accept returning bikes (broken or not).*

### Challenges 19 and 20 - isolating tests with doubles
- Introduced doubles with method stubs to isolate tests
- Added behaviour to doubles to allow functions to be passed

### Credits
[Luke Carney](https://github.com/Luke-The-Duke/boris-bikes),
[Ben Dowsett](https://github.com/bdowsett/Boris-Bikes),
[Simon Jacobs](https://github.com/smoni19/Boris_Bikes),
[Jacob Hanrahan](https://github.com/JacobCH93/boris_bikes1)