impl Calculator.calculate {
    print("Calculator Started");
    result = calculate_value(self.math_exp);
    print(result);
    calc_node = calculated(value=result);  # Create an instance of the calculated node
    visit calc_node;  # Visit the node instance
}

impl calculated.doneCalc {
    print("Calculation completed: " + self.value);  # Use the stored value
}