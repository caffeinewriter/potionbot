defmodule PotionBot.Commands do
  @moduledoc """
  All of the bots commands  and imports related to that are supposed to be defined here.
  """

  @doc """
  `__using__` is automatically called when a module is used, so we load all of the commands here based on the current environment variable.
  """
  def __using__(options) do
    case Mix.env() do
      :test -> nil
      :dev -> bootstrap_commands_prod()
      _ -> bootstrap_commands_prod()
    end
  end

  defp bootstrap_commands_prod do
    IO.puts("Loaded commands for the production environment.")
    use PotionBot.Commands.Ping
    use PotionBot.Commands.Prefix
    use PotionBot.Commands.ModulesManager
  end
end
