defmodule ListFilter do
  def call(list) do
    list
    |> Enum.flat_map(fn s ->
      case Integer.parse(s) do
        {int, _rest} -> [int]
        :error -> []
      end
    end)
    |> Enum.count(fn n -> rem(n, 2) == 1 end)
  end
end
