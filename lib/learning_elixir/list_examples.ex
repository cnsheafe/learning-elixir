defmodule ListExamples do
  def take_first_n(list, n \\ 1), do: do_take_first_n(list, n, [])

  defp do_take_first_n([head | tail], n, acc) when n >= 1 and is_integer(n) do
    do_take_first_n(tail, n - 1, acc ++ [head])
  end

  defp do_take_first_n([head | _tail], 1, acc) do
    acc ++ [head]
  end

  defp do_take_first_n(_list, 0, acc) do
    acc
  end

  defp do_take_first_n(_list, n, _acc) when n < 0 do
    throw "n must be a positive integer"
  end

  defp do_take_first_n(_list, n, _acc) when not is_integer(n) do
    throw "n must be a positive integer"
  end
end
