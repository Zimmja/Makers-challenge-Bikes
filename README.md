# Boris Bikes

As part of the Week 1 challenge at Makers Academy, we were presented with the following coding challenge:

Let's go back several years, to the days when there were no Boris Bikes. Transport for London, the body responsible for delivery of a new bike system, come to you with a plan: a network of docking stations and bikes that anyone can use. They want you to build a program that will emulate all the docking stations, bikes, and infrastructure (repair staff, and so on) required to make their dream a reality.

To help structure your work, here are 22 challenges. They all build on one another. They require you to research things, to get stuck, and to find your own solutions. This is on purpose. A developer is a 'knowledge worker' - someone who will spend the majority of their time researching and learning how to solve problems.

### Challenges 1 - 10

These challenges were completed with **Luke Carney**.

##### Challenge 1 - initiating repositories
A git repository was initiated and linked to local folders.

##### Challenge 2 - converting user stories into a plan
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

##### Challenge 3 and 4: examing error messages
- In irb, attempted to call an iteration of a non-existent class, DockingStation
- Examined and discussed the errors presented in the stack trace; proposed solutions

##### Challenge 5 - 10: writing code with rspec
- Initiated rspec
- Created spec.rb and .rb files for testing and code-writing (seperate spec.rb and .rb files created for separate classes)
- Linked seperate .rb files with "require_relative"; linked spec.rb files to .rb files with "require"
- With files setup, we wrote spec.rb tests followed by code to pass these tests up to the point of producing passable "release_bike" and "is_working?" methods
- Checked usability with irb throughout (even with error messages anticipated), examing error messages as we worked through the challenges

### Challenges 11 - 13

These challenges were completed with **Ben Dowsett**.

- Created rspec tests involving functions with parameters
- Created rspec tests to monitor for errors

### Credits
Luke Carney
Ben Dowsett