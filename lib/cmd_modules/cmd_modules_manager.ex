defmodule PotionBot.Commands.ModulesManager do
  @moduledoc """
  Allows you to enable, disable or restart other modules on the fly.
  """
  import PotionBot.ModuleManager
  use Alchemy.Cogs

  # TODO: Implement a custom parser for those commands to accept a custom prefix

  @doc "Enables a module. Echoes back a warning message if it has not succeeded."
  Cogs.def enable_module(rest) do
    case load_module(rest, "PotionBot.Commands") do
      {:ok, msg} -> Cogs.say(msg)
      {:warning, msg} -> Cogs.say("WARNING: #{msg}.")
    end
  end

  @doc "Disables a module. Echoes back a warning message if it has not succeeded."
  Cogs.def disable_module(rest) do
    case unload_module(rest, "PotionBot.Commands") do
      {:ok, msg} -> Cogs.say(msg)
      {:warning, msg} -> Cogs.say("WARNING: #{msg}.")
    end
  end

  @doc "Restarts a module. Echoes back a warning message if it has not succeeded."
  Cogs.def restart_module(rest) do
    case reload_module(rest, "PotionBot.Commands") do
      {:ok, msg} -> Cogs.say(msg)
    end
  end
end
