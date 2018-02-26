defmodule PotionBot.ModuleManager do
  import PotionBot.Helpers.CommandModules, only: [is_module_loaded: 1]

  @doc """
  Reloads a module based on a "Module Name" and a "Prefix".
  If omitted, the default prefix `PotionBot.Commands` is used.

  Note that this does not throw an error if you are trying to restart a module that is not currently loaded. It simply disregards that in this case and loads the module normally.
  """
  @spec reload_module(String.t(), String.t()) :: {:ok, String.t()}
  def reload_module(module_name, prefix \\ "PotionBot.Commands") do
    unload_module(module_name, prefix)
    load_module(module_name, prefix)
    {:ok, "#{module_name} was succesfully reloaded!"}
  end

  @doc """
  Loads a module into Alchemy's Cogs based on a "Module Name" and a "Prefix".
  A module has to respect the Cogs command structure to be succesfully used and loaded.

  If omitted, the default prefix `PotionBot.Commands` is used.
  """
  @spec load_module(String.t(), String.t()) :: {:ok, String.t()} | {:warning, String.t()}
  def load_module(module_name, prefix \\ "PotionBot.Commands") do
    if is_module_loaded(module_name) do
      {:warning, "#{module_name} is already loaded. Try the reload command."}
    else
      mdl_atom = String.to_atom("Elixir.#{prefix}.#{module_name}")

      if Code.ensure_loaded?(mdl_atom) do
        Code.eval_quoted(quote do: use(unquote(mdl_atom)))
        {:ok, "#{module_name} was loaded succesfully."}
      else
        {:warning, "#{module_name} does not exist."}
      end
    end
  end

  @doc """
  Unloads a module from Alchemy's Cogs based on a "Module Name" and a "Prefix".

  If omitted, the default prefix `PotionBot.Commands` is used.
  """
  @spec unload_module(String.t(), String.t()) :: {:ok, String.t()} | {:warning, String.t()}
  def unload_module(module_name, prefix \\ "PotionBot.Commands") do
    unless is_module_loaded(module_name) do
      {:warning, "#{module_name} is not loaded. First load it."}
    else
      Alchemy.Cogs.unload(Module.concat(prefix, module_name))
      {:ok, "#{module_name} was unloaded."}
    end
  end
end
