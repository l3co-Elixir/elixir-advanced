defmodule Interoperability do

  @moduledoc"""
  timed puts times based on function

  ## Example
    iex> Interoperability.timed(fn (n) -> (n * n) * n end, [100])
  """

  def timed(fun, args) do
    {time, result} = :timer.tc(fun, args)
    IO.puts("Time: #{time} μs")
    IO.puts("Result: #{result}")
  end
end
