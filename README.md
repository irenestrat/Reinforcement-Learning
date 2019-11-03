# Reinforcement-Learning

## Markov Decision Process 

This project is part of excercise from Technical University of Crete in Machine Learning course. 
Consider a simple robot able to move inside the following 5x5 grid world (21 states), where # are
walls, o indicates the initial location of the robot, G is a goal state, and T indicates a trap (the schema is in the pdf file):

|  |  |  |  |  |
| --- | --- |--- |--- |--- |
|  | | |  | |
| | X| X|| X|
|  || |  | G|
|  | X| T| | T|
| O | | |  | T|

At each discrete time step, the robot can choose any of the four available locomotion actions: A = {L;R;U;D} 
standing for Left, Right, Up, and Down respectively. All four actions are noisy; they
move the robot in the intended direction with a probability of 0:8, but there is a probability of 0:1
for moving sideways on each side. When the motion leads to bumping into a wall, the robot stays in
place. States G and T are absorbing (terminal) and yield a final reward of +1 and -1 respectively,
when entering such a state; at all other transitions a reward of r =-0:04 is given. Rewards are not
discounted over time.

## How to run this code

You only run the **learn.m** file and it calculates the policy in the matrix c for γ factor equal to 0.8

## Important Notes

In order to understand how the policy works you need to take the matrix indexes as follows (concider this as 5 x 5 matrix):

|  |  |  |  |  |
| --- | --- |--- |--- |--- |
| 17 | 18| 19| 20 | 21|
| 16 | X| X| 15 | X|
| 10 |11| 12| 13 | G|
| 9 | X| T| 7 | T|
| 1 | 2| 3| 4 | T|


## Result Matrix

|  |  |  |  |  |
| --- | --- |--- |--- |--- |
| right | right| right| down | left|
| down | X| X| down | X|
| right |right| right| right| G|
| up | X| T| up | T|
| up | right| right| up | T|

For negative reward values policy does not change but the value function changes with stable discount factor γ

## References

[1] M. G. Lagoudakis lectures of course Machine Learning from TUC, COMP 614

[2] Exercise from this course
