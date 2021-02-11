defmodule Ex1 do
  @moduledoc """
  Documentation for `Ex1`. Exercise #1
  """
  require Integer
  require IO

  def custom_sum(a, b) when is_number(a) and is_number(b), do: {:ok, round(a) + round(b)}
  def custom_sum(_, _), do: {:error, :badarg}
end
