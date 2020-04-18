defmodule ErrorTest do
  def try_sample do
    try do
      raise SampleError
    rescue
      e in SampleError -> e
    end
  end

  def try_catch do
    try do
      for x <- 0..10 do
        if x == 5, do: throw(x)
        IO.puts(x)
      end
    catch
      x -> "Cauth #{x}"
    end
  end
end
