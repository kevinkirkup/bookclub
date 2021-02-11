defmodule Chapter10 do
  @moduledoc """
  Documentation for `Chapter10`. Exercise Chapter 10
  """

  def isprime(x), do: 2..x |> Enum.filter(fn a -> rem(x, a) == 0 end) |> length() == 1

  def primes(2), do: [2]

  def primes(x) do
    for item <- 2..x, isprime(item), do: item
  end
end
