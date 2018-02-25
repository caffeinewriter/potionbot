defmodule PotionbotTest do
  use ExUnit.Case
  doctest PotionBot

  test "has ping command" do
    assert Enum.member?(PotionBot.Commands.__info__(:functions), {:ping, 1})
  end

  test "has setprefix command" do
    assert Enum.member?(PotionBot.Commands.__info__(:functions), {:setprefix, 2})
  end
end
