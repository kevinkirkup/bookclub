defmodule Ex2 do
  @moduledoc """
  Documentation for `Ex2`. Exercise #2
  """
  require Integer

  def even_length([]), do: {:error, :must_be_even}

  def even_length(a) when is_list(a) do
    a_length = length(a)

    if Integer.is_even(a_length) do
      {:ok, a_length}
    else
      {:error, :must_be_even}
    end
  end
end
