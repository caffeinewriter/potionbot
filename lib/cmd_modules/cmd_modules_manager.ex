defmodule PotionBot.Commands.ModulesManager do
  import PotionBot.ModuleSelector
  use Alchemy.Cogs

  Cogs.def enable_module(rest) do
    case load_module(rest, "PotionBot.Commands") do
      {:ok, msg} -> Cogs.say(msg)
      {:warning, msg} -> Cogs.say("WARNING: #{msg}.")
    end
  end

  Cogs.def disable_module(rest) do
    case unload_module(rest, "PotionBot.Commands") do
      {:ok, msg} -> Cogs.say(msg)
      {:warning, msg} -> Cogs.say("WARNING: #{msg}.")
    end
  end

  Cogs.def restart_module(rest) do
    case reload_module(rest, "PotionBot.Commands") do
      {:ok, msg} -> Cogs.say(msg)
    end
  end
end
