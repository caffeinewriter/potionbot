defmodule PotionBot.Commands do
  @moduledoc """
      All of the bots commands  and imports related to that are supposed to be defined here.
  """
  use Alchemy.Cogs

  Cogs.def ping do
    Cogs.say("pong!")
  end
end
