defmodule ElixirAdvancedTest do
  use ExUnit.Case
  doctest ElixirAdvanced

  test "greets the world" do
    assert ElixirAdvanced.hello() == :world
  end
end
