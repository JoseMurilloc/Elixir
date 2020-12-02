defmodule ExStartedTest do
  use ExUnit.Case
  doctest ExStarted

  test "greets the world" do
    assert ExStarted.hello() == :world
  end
end
