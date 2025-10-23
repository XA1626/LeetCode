defmodule Solution do
  @spec roman_to_int(s :: String.t) :: integer
  def roman_to_int(s) do
    # 1. Define the values for each Roman symbol
    roman_values = %{
      ?I => 1,
      ?V => 5,
      ?X => 10,
      ?L => 50,
      ?C => 100,
      ?D => 500,
      ?M => 1000
    }

    # 2. Convert the string to a list of characters (charlist) and reverse it
    # We use a right-to-left fold to easily handle the subtractive rule.
    s
    |> String.to_charlist()
    |> Enum.reverse()
    |> Enum.reduce({0, 0}, fn symbol, {acc, prev_value} ->
      # 3. Look up the current symbol's value
      current_value = Map.fetch!(roman_values, symbol)

      # 4. Apply the Subtractive Rule:
      # If the current value is LESS than the previous value, subtract it.
      # Otherwise, add it.
      new_acc = if current_value < prev_value do
        acc - current_value
      else
        acc + current_value
      end

      # 5. Return the updated accumulator and the current value as the new previous value
      {new_acc, current_value}
    end)
    |> elem(0) # 6. The result is the final accumulated total (the first element of the tuple)
  end
end