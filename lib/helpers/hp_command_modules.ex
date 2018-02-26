defmodule PotionBot.Helpers.CommandModules do
  @doc """
  Checks if a current Module was loaded into Alchemy's Cogs.
  To be detected as loaded, a Module has to define the function `available_[ModuleName]`".
  This is a hack to get circumvent Alchemy's current limitations.
  """
  @spec is_module_loaded(String.t()) :: boolean()
  def is_module_loaded(module_name) do
    Alchemy.Cogs.all_commands()["available_#{module_name}"]
  end
end
