defmodule Demo.Concat do
  defmacro __using__(_) do
    quote do
      defmacro concat(do: block) do
        {:__block__, _, lines} = block

        quote do
          [unquote(lines)]
          |> List.flatten()
          |> Enum.reject(&is_nil/1)
        end
      end
    end
  end
end
