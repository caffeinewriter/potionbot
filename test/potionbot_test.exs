defmodule PotionbotTest do
  use ExUnit.Case
  doctest Potionbot

  test "greets the world" do
    assert Potionbot.hello() == :world
  end
end
