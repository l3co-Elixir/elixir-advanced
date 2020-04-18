defmodule Concorrence.Sample do
  def add(a, b), do: IO.puts(a + b)

  def listen do
    receive do
      {:ok, "hello"} ->
        IO.puts("World")
    end

    listen()
  end

  def explode, do: exit(:kaboom)

  def run do
    Process.flag(:trap_exit, true)
    spawn_link(Concorrence.Sample, :explode, [])

    receive do
      {:EXIT, _from_pid, reason} -> IO.puts("Exit reason: #{reason}")
    end
  end

  def double(x) do
    :timer.sleep(2000)
    x * 2
  end
end
