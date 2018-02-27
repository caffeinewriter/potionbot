defmodule PotionBot.Tests.Commands do
  @doc """
  This houses basic sanity tests for commands, as well as more complex tests for more complex commands.
  """
  use ExUnit.Case

  test "has a ping command" do
    assert Enum.member?(PotionBot.Commands.Ping.__info__(:functions), {:ping, 1})
  end

  test "ping has availablility function for module manager" do
    assert Enum.member?(PotionBot.Commands.Ping.__info__(:functions), {:available_Ping, 1})
  end

  test "has a setprefix command" do
    assert Enum.member?(PotionBot.Commands.Prefix.__info__(:functions), {:setprefix, 2})
  end

  test "prefix has availablility function for module manager" do
    assert Enum.member?(PotionBot.Commands.Prefix.__info__(:functions), {:available_Prefix, 1})
  end
end
