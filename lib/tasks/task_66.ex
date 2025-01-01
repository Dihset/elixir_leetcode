defmodule Tasks.Task66 do

  @doc """
  ## Examples

      iex> Tasks.Task66.plus_one([1, 2, 3])
      [1, 2, 4]

      iex> Tasks.Task66.plus_one([4, 3, 2, 1])
      [4, 3, 2, 2]

      iex> Tasks.Task66.plus_one([9])
      [1, 0]

  """
  def plus_one([]) do
    [1]
  end

  @spec plus_one(digits :: [integer]) :: [integer]
  def plus_one(digits) do
    {last, head} = List.pop_at(digits, -1)
    case last + 1 do
      10 ->
        plus_one(head) ++ [0]
      _ -> head ++ [last + 1]
    end
  end
end
