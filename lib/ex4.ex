defmodule Ex4 do
  @moduledoc """
  Documentation for `Ex4`. Exercise #4
  """

  def wc([]), do: %{}

  def wc(list) when is_list(list) do
    list
    |> Enum.reduce(%{}, fn x, acc ->
      Map.update(acc, x, 1, &(&1 + 1))
    end)
  end
end
