import math;

walker Calculator {
    has num_x : float;
    has num_y : float;
    has operation : string;

    can calculate with `root entry;
    can add with add entry;
    can subtract with subtract entry;
    can multiply with multiply entry;
    can divide with divide entry;

}

node add {
    has num_x : float, num_y : float;
}

node subtract {
    has num_x : float; 
    has num_y : float;
}

node multiply {
    has num_x : float;
    has num_y : float;
}

node divide {
    has num_x : float;
    has num_y : float;
}

with entry {
    root spawn Calculator(int(input("Enter first number: ")), int(input("Enter second number: ")), input("Enter operation (+, -, *, /): "));
}