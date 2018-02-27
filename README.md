# PotionBot

PotionBot is a Discord bot written in Elixir, which uses [Alchemy](https://hexdocs.pm/discord_alchemy/) for it's Discord-related operations.

When it's fully done, it will come with a lot of handy modules regarding:

- Server role management with different levels of command access
- Module (command bundles) management and dynamic loading
- Custom prefix setter (among other relevant per-server configurations)
- And more...

Currently, PotionBot is under very early development stages. Any help is very welcome, as long as it's done in a sane fashion.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `potionbot` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:potionbot, "~> [version tag here]"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/potionbot](https://hexdocs.pm/potionbot).

## Defining your own custom modules

[Refer to the official Alchemy documentation for how modules should be set up.](https://hexdocs.pm/discord_alchemy/intro.html)
