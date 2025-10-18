defmodule Solution do
  @spec is_palindrome(x :: integer) :: boolean
  def is_palindrome(x) when x < 0, do: false
  def is_palindrome(x), do: reverse_number(x) == x

  defp reverse_number(x, acc \\ 0)
  defp reverse_number(0, acc), do: acc
  defp reverse_number(x, acc) do
    reverse_number(div(x, 10), acc * 10 + rem(x, 10))
  end
end