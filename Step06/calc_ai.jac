import from mtllm.llm {Model}

glob llm =  Model(model_name="gemini/gemini-2.0-flash", verbose=False);

# Calculations with MTLLM
def calculate_value(math_exp: str) -> str by llm();

walker Calculator {
    has math_exp: str;

    can calculate with `root entry;
}

node calculated {
    # print("Calculation completed.");
}

with entry {
    # print(calculate("2 + 2"));
    # print(calculate("3 * 5"));
    root spawn Calculator(input("Enter a mathematical expression (e.g., 2 + 2): "));
}