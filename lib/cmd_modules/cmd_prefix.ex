defmodule PotionBot.Commands.Prefix do
  use Alchemy.Cogs

  Cogs.def available_Prefix do
    Cogs.say("Module Prefix is available.")
  end

  Cogs.def setprefix(new_prefix) do
    Cogs.set_prefix(new_prefix)
    Cogs.say("Prefix now set to " <> new_prefix)
  end
end
