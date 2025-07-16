impl Calculator.calculate {
    print("Calculator Statted");
    if self.operation == "+" {
        visit add(self.num_x, self.num_y);
    }
    elif self.operation == "-" {
        visit subtract(self.num_x, self.num_y);
    }
    elif self.operation == "*" {
        visit multiply(self.num_x, self.num_y);
    }
    elif self.operation == "/" {
        visit divide(self.num_x, self.num_y);
    }
    else {
        print("Unknown operation: " + self.operation);    
    } 
}   

impl Calculator.add {
    print(self.num_x + self.num_y);
}

impl Calculator.subtract {
    print(self.num_x - self.num_y);
}   

impl Calculator.multiply {
    print(self.num_x * self.num_y);
}

impl Calculator.divide {
    if self.num_y == 0 {
        print("Error: Division by zero");
    } else {
        print(self.num_x / self.num_y);
    }
}