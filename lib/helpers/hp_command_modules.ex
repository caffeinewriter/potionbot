defmodule PotionBot.Helpers.CommandModules do
  @doc """
  Checks if a current Module was loaded into Alchemy's Cogs.
  In order to get detected as loaded, a Module has register the function `available_[ModuleName]` in the Cogs". This is a hack to get circumvent Alchemy's current limitations.
  """
  @spec is_module_loaded(String.t()) :: boolean()
  def is_module_loaded(module_name) do
    Alchemy.Cogs.all_commands()["available_#{module_name}"]
  end
end
