defmodule PotionBot.MixProject do
  use Mix.Project

  def project do
    [
      app: :potionbot,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps(),

      # Docs
      name: "PotionBot",
      source_url: "https://github.com/caffeinewriter/potionbot",
      homepage_url: "https://hexdocs.pm/potionbot/"
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      mod: {PotionBot, []},
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, "~> 0.18.3", only: :dev},
      {:alchemy, "~> 0.6.1", hex: :discord_alchemy},
      {:mock, "~> 0.3.0", only: :test}
    ]
  end
end
