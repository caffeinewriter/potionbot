defmodule PotionBot.Helpers.CommandModules do
  @spec is_module_loaded(String.t()) :: boolean()
  def is_module_loaded(module_name) do
    Alchemy.Cogs.all_commands()["available_#{module_name}"]
  end
end
