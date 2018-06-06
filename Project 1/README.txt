VG101 Project 1
Shi Li, 517370910032


Ex.1 - Cross road traffic game

How to play?
    Execute 'p1_main.m'.
Input format:
    An integer for difficulty. (1 for easy, 2 for middle, 3 for hard, 0 for customized)
    If the integer is 0, the user should additionally input:
        n - total number of cars (integer, 1~20);
        w - width of the crossroad (integer, 1~10);
        p - probability that a car breaks the law, i.e., runs the red light (double, 0~1);
        t - probability that a car turns left or right (double, 0~1);
        g, o, r - time of green/orange/red light on the "horizontal" road (integer, 1~20).
Output format:
    1. Animation of traffic in the crossroad.
    2. 'You win!' or 'You lose...'
    3. Plates of cars who break the law, i.e., run the red light or hit another car delibrately.

Example input 1:
    2
Example output 1:
    Animation in 'Example_Output_1.gif'.
    (The speed in the gif is accelerated to 3x.)
    (Due to some technical problems, the color of traffic lights in the gif cannot be displayed correctly, but the actual color is right.)
    You lose...
    The plate of those who break the traffic law:
    G L24BA
Example input 2:
    0
    10
    3
    0.1
    0.4
    6
    3
    6
Example output 2:
    Animation in 'Example_Output_2.gif'.
    You win!
    Good! All the cars obey the law.


Notes & Algorithm:
    A. Functions used in the project
      (Input & output of them is included in comments in the source code)
        p1_input
        p1_initialize(n, w, l, p, t)
            p1_getplate(n, car)
        p1_move(n, w, l, g, o, r, p, car)
            p1_drawroad(w, l)
            p1_crash(car, w)
            p1_light(status, w)
            p1_displaycar(car, i)
            p1_finish(car, l, w)
        p1_output(result, car)

    B. Parameters of a car
        group    (starting from which lane)
        plate
        length   (According to requirement 6, length & width can be further
        width     adjusted, but I don't have enough time to complete it...)
        lane
        turn     (1 for right turn, -1 for left turn, 0 for go straight)
        brklaw   (whether "plan" to break traffic law)
        hit      (whether actually run the red light and hit another car)

    C. Algorithm in p1_move to describe the motion of cars
        I consider the motion of each car one by one, separately.
        Circumstance 1 - in the crossroad
            If a car has entered the crossroad, it can move regardless of traffic lights.
            A car who "obeys" the law will wait if there's a car in front of him.
            However, a car who "plans to break" the law may hit the car in front of him. The probability is p / sqrt(w), which is set by myself. If such the probability is not used, a crash will never happen.
        Circumstance 2 - green light on horizontal lanes
            Namely, red light on vertical lanes.
            For horizontal lanes: The car moves left or right. However, if there's a car in front of him, he will wait.
            For vertical lanes: 
                The car will wait. However, if he "plans" to break the law and he is reaching the crossroad, he will run the red light.
        Circumstance 3 - red light on horizontal lanes
            Namely, green light on vertical lanes.
            Similar to circumstance 2.
        Circumstance 4 - yellow light
            If the car has not reached the crossroad, see the circumstance of red light.
            If the car has entered the crossroad, see circumstance 1.

    D. Bugs & Problems
        1. The car will automatically keep a safe distance from the car in front of him. However, under this circumstance, a crash will never happen. To solve this problem, I add the probability 'p / sqrt(w)' for those cars who "plan to break the law", then they may hit other cars in the crossroad. I think it may not accord with the requirements, and lead to some deduction...?
        2. There is small probability that four cars enter the crossroad simultaneously and lead to a traffic jam. If all of them "don't plan to break the law", the program will go into an endless loop.
        3. In p1_move, I repeat some codes for many times. I think that most of them can be simplified or put into another function, and I believe I can do better next time.




Ex.2 - Registration plates

The generation of plates has been integrated in Ex.1, so I will expand to describe Ex.2_1a & Ex.2_1b here.

Ex2_1a - All the permutations
Input format:
    A string s.
Output format:
    An array of strings including all the permutations of chars in s.

Example input:
    p1_ex2_1a('123')
Example output:
    '123'
    '132'
    '213'
    '231'
    '312'
    '321'

Algorithm:
    I use a recursive algorithm similar to Depth-First Search.
    If all the elements have been used, save the sequence of elements.
    Otherwise,
        Loop i from 1 to the number of elements
            add the ith element to the sequence, 
            delete that element from all the elements,
            call the function itself (input: current sequence and elements), 
            delete that element from the sequence,
            add that element to all the elements.
        End
    End


Ex2_1b - Random permutations
Input format:
    A string s, and an integer n.
Output format:
    An array of strings including n permutations of chars in s.

Example input:
    p1_ex2_1b('1234',5)
Example output:
    '2431'
    '1342'
    '1432'
    '4231'
    '2143'

Notes & Problems:
    Although I copy some of the code from p1_ex2_1a, and I try to apply recursion to this part, but actually I fail to use RECURSION here. The main work in this program is done by the main function instead of the recursive function, which is only used to generate one permutation.
    I think that Depth-First Search only applies to those data structures like trees, i.e., determine the first element, then the second, ..., then back to the second, ... However, if we want to generate random permutations, the data structure 'tree' will eventually fail. Let's see an example.
    Using this algorithm, if I want to generate 5 random permutations of '1234', it is likely to generate something like this:
        '2143'
        '2134'
        '2341'
        '2314'
        '2413'
    After generate the first line '2143', the program goes back to '214', then goes back to '21'. Next it goes to '213' then '2134'. According to this kind of pattern, the recursive DFS algorithm cannot generate true random permutations.