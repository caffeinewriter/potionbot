defmodule PotionBot.Commands do
  @moduledoc """
      All of the bots commands  and imports related to that are supposed to be defined here.
  """
  use Alchemy.Cogs

  Cogs.def ping do
    Cogs.say("pong!")
  end

  Cogs.def setprefix(new_prefix) do
    Cogs.set_prefix(new_prefix)
    Cogs.say("Prefix now set to " <> new_prefix)
  end
end
