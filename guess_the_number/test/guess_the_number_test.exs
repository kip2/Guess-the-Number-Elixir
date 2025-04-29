defmodule GuessTheNumberTest do
  use ExUnit.Case
  doctest GuessTheNumber

  test "greets the world" do
    assert GuessTheNumber.hello() == :world
  end
end
