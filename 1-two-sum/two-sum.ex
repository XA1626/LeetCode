defmodule Solution do
  @spec two_sum(nums :: [integer], target :: integer) :: [integer]
  def two_sum(nums, target) do
    Enum.reduce_while(Enum.with_index(nums), %{}, fn {num, idx}, seen ->
      complement = target - num
      
      case Map.get(seen, complement) do
        nil ->
          {:cont, Map.put(seen, num, idx)}
        prev_idx ->
          {:halt, [prev_idx, idx]}
      end
    end) || raise "No two sum solution"
  end
end