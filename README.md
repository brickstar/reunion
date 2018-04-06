# Reunion

## Preparation

1. Fork this repository.
1. Clone your new repository to your local machine.
1. Run `bundle` from the command line.
1. Run `rake` from the command line.

## Synthesis

Included with your pull request, you must submit answers to the following questions:

* What do you think we were trying to get you to learn with this challenge?

  * How to reach into a box within a box (and perhaps more boxes within boxes) to manipulate, isolate and calculate data based on a set of specifications.
  * How to implement clean design for efficient problem solving.

* Outline in words (at least 5-6 sentences) what your code is doing in order to solve this problem.

  * I created containers to hold data so it could be accessed and manipulated. I was attempting to streamline design for readability and maintainability. I wanted design to be dynamic to fit any number of activities. I wanted to utilize hashes and arrays when suitable. I felt class extraction would have made sense with this exercise - implementing a Participant class. 

* What was the most difficult portion of this for you?

  * The end of iteration 4 presents design challenges for me - with more experience solving problems like this, i will gain insight as to what design decisions lead to expedited and streamlined results. Another challenge is interpreting the specifications - should payment offsets be calculated based on the number of times a participant participated in an activity, or based on the total number of participants at the reunion?
  I did not allow myself enough time to solve this problem - also completion is challenging while you are watching a 3 year old. I should have managed my time more efficiently earlier in the day to ensure completion. I am not inherently sure what design makes for the easiest solution - the reunion_payment_offset method is a helper method that will aid in solving the overall problem, but does it need to be a hash with the activity as keys, or can it simply be an array with activity hashes not containing the activity name? I ran out of time before i was able to make this decision.

* What came naturally to you?
  * Style and syntax is definitely feeling natural.

## Tasks

We're developing a small application to split expenses after a group of friends get together for a reunion. This will track how much each person spent on a particular activity, how much each person owes across all activities, and ultimately print out a summary of how much each person owes or is owed.

Use tests to drive your development.

### Iteration 1: Creating Activities

Add to the existing Activity class so that it supports the following functionality.

* An Activity has a name, such as 'hiking'  
* An Activity has participants
  * participants are represented with a hash and have a name and an amount they've paid for that activity  
* You can add participants to an Activity
* You can evaluate the total cost of an activity   

### Iteration 2: Activity Calculations

Add to the Activity class so that it supports the following functionality. Note, it is assumed that the cost of each activity is split evenly between all participants.

* You can split the cost of an activity
* You can evaluate out how much each person is owed/owes
  * If a participant paid less than their fair share they owe a positive amount.
  * If a participant paid more than their fair share they owe a negative amount (meaning they are owed money).  


### Iteration 3: Creating Reunions

Add to the existing Reunion class so that it supports the following functionality.

* A Reunion has a location
* A Reunion has Activities  
* You can add Activities to a Reunion

### Iteration 4: Reunion Calculations

Add to the existing Reunion class so that it supports the following functionality.

* You can evaluate the total cost of a Reunion
* You can create a total breakdown of the Reunion which figures out who owes/is owed how much
  * Consider all of the Activities
  * If a participant paid less than their fair share they owe a positive amount.
  * If a participant paid more than their fair share they owe a negative amount (meaning they are owed money).
* You can print a summary of total owed amounts per person


### Iteration 5: ERB

Research ERB. Create a template for a webpage using HTML and ERB that will display important details of a Reunion. Create a runner file to create a Reunion with Activities, and use the template to generate an HTML page that you can open in your browser.
