defmodule PotionBot.Commands.Ping do
  use Alchemy.Cogs

  Cogs.def available_Ping do
    Cogs.say("Module Ping is available.")
  end

  Cogs.def ping do
    Cogs.say("pong!")
  end
end
