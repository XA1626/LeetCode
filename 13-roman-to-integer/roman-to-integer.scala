object Solution {
    def romanToInt(s: String): Int = {
        // 1. Define the values for each Roman symbol.
        val romanValues = Map(
            'I' -> 1,
            'V' -> 5,
            'X' -> 10,
            'L' -> 50,
            'C' -> 100,
            'D' -> 500,
            'M' -> 1000
        )

        // 2. Process the Roman numeral string from right to left.
        // We initialize the accumulated total (acc) to 0 and the value of the
        // previously processed symbol (prevValue) to 0.
        s.foldRight((0, 0)) { case (symbol, (acc, prevValue)) =>
            // Get the integer value of the current symbol.
            val currentValue = romanValues(symbol)

            // 3. Apply the Subtractive Rule:
            // If the current value is LESS than the previous value (e.g., 'I' before 'V'),
            // it means we must subtract it from the total.
            val newAcc = if (currentValue < prevValue) {
                acc - currentValue
            } 
            // Otherwise (currentValue >= prevValue), it's additive (e.g., 'V' before 'I' or 'X' before 'X').
            else {
                acc + currentValue
            }

            // Return the updated accumulator and the current value as the new previous value.
            (newAcc, currentValue)
        }._1 // 4. The result is the final accumulated total (the first element of the tuple).
    }
}