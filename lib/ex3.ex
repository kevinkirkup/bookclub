defmodule Ex3 do
  @moduledoc """
  Documentation for `Ex3`. Exercise #3
  """
  require IO

  def flatten([]) do
    IO.puts("empty")
    []
  end

  def flatten([head | []]) do
    IO.puts("Head: #{inspect(head)}")
    flatten(head)
  end

  def flatten([[head] | tail]) do
    IO.puts("#1 Head: #{inspect(head)}, Tail: #{inspect(tail)}")
    [flatten(head) | flatten(tail)]
  end

  def flatten([head | tail]) when not is_list(head) and not is_list(tail) do
    IO.puts("#2 Head: #{inspect(head)}, Tail: #{inspect(tail)}")
    [head, tail]
  end

  def flatten([head | tail]) do
    IO.puts("#3 Head: #{inspect(head)}, Tail: #{inspect(tail)}")
    [head | flatten(tail)]
  end

  def flatten(head) do
    IO.puts("#4 Head: #{inspect(head)}")
    head
  end
end
