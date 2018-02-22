defmodule PotionBot do
  @moduledoc """
  Documentation for PotionBot, a Discord bot based on the library Alchemy.
  Visit https://github.com/caffeinewriter/potionbot for more information.
  """
  use Application

  alias PotionBot.Commands
  alias Alchemy.Client

  @doc "This is the entrypoint for the bot. Set your DISCORD_KEY variable before running."
  def start(_type, _args) do
    case Map.get(System.get_env(), "DISCORD_KEY") do
      nil -> raise "Discord Key is not set. Set an environment variable with DISCORD_KEY."
      discord_key -> bootstrap_bot(discord_key)
    end
  end

  defp bootstrap_bot(discord_key) do
      run = Client.start(discord_key)
      use Commands
      run
  end
end
