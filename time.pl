
/* This program counts to 10 and then prints out Time is up." */

:-dynamic val/1.

/* Initiate the timer */
val(0).

/* Do the counting */
start :- retract(val(X)),   /*instantiate X to the current value and retract it  */
         Newval is X+1,     /*set a different variable to X + 1 */
         assert(val(Newval)), /*save the new value */
         write('Time is '), write(Newval), nl,
         Newval =\= 10,   /* Not equal to 10 yet? */
         start.  /* Then do it again */

/* Newval not equal to 10 check failed, so we try the second clause and we are done. */
start :- write('Time is up.').  

         