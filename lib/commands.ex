defmodule PotionBot.Commands do
  @moduledoc """
      All of the bots commands  and imports related to that are supposed to be defined here.
  """

  def __using__(options) do
    use PotionBot.Commands.Ping
    use PotionBot.Commands.Prefix
    use PotionBot.Commands.ModulesManager
  end
end
