defmodule PotionBot.Tests.ModuleManager do
  @doc """
  This attemps to test if the ModuleManager actions are working correctly for module management commands
  coming from the client's side.
  ExUnit is configured with `seed:0` because the order of module loading matters for this module's operations.
  """
  alias PotionBot.ModuleManager
  import PotionBot.Helpers.CommandModules, only: [is_module_loaded: 1]

  # Pre-configure ExUnit to respect test order
  use ExUnit.Case
  doctest PotionBot

  test "Tests if the ModuleManager correctly loads a module" do
    assert {:ok, _} = ModuleManager.load_module("TestModule")
    assert is_module_loaded("TestModule")
  end

  test "Tests if the ModuleManager correctly unloads a module" do
    assert {:ok, _} = ModuleManager.unload_module("TestModule")
    assert !is_module_loaded("TestModule")
  end

  test "Tests if the ModuleManager correctly reloads a module" do
    ModuleManager.load_module("TestModule")
    assert is_module_loaded("TestModule")
    assert {:ok, _} = ModuleManager.reload_module("TestModule")
  end
end

defmodule PotionBot.Commands.TestModule do
  use Alchemy.Cogs

  Cogs.def available_TestModule do
    Cogs.say("Module Ping is available.")
  end

  Cogs.def test do
    {:ok, "This is a test."}
  end
end
