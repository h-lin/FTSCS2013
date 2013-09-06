//This file was generated from (Academic) UPPAAL 4.1.14 (rev. 5212), March 2013

/*
sending of msg1 is always cost 5 macroticks.
*/
A[] (Observer.received imply Observer.y == 5)

/*
the time from buffered to received of observer (i.e. from msg1 is buffered to msg1 is received) can be less than 6 (6 is the message length plus actionpoint offset)
This property can not be satisfied.
*/
E<> (Observer.received && Observer.x < 6)

/*
There exist a path that the time from buffered to received of observer is 6 macroticks (the minimum)
*/
E<> (Observer.received && Observer.x == 6)

/*
The time from buffered to received of observer (i.e. from msg1 is buffered to msg1 is received) can be large than 182 (182 is the length of cycle)
This property can not be satisfied.
*/
E<> (Observer.received && Observer.x > 182)

/*
There exist a path that the time from buffered to received of observer is 182 macroticks (the maximum)
*/
E<> (Observer.received && Observer.x == 182)

/*
when observer is in received (i.e. msg1 is received), the time from "buffered" is always less and equal to 182 macroticks (182 macroticks is exactly the length of cycle)
*/
A[] (Observer.received imply Observer.x <= 182)

/*
in this case, the query can not be satisfied
*/
A[] (Observer.received imply Observer.x <= 181)

/*
when observer is in received (i.e. msg1 is received), the time from "buffered" is always large and equal to 6 macroticks
*/
A[] (Observer.received imply Observer.x >= 6)

/*
in this case, the query can not be satisfied
*/
A[] (Observer.received imply Observer.x >= 7)

/*

*/
A[] not deadlock
