defmodule FriendAppTest do
  use ExUnit.Case
  doctest FriendApp

  test "greets the world" do
    assert FriendApp.hello() == :world
  end
end
