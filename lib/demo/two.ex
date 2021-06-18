defmodule Demo.Two do
  alias require Demo.Util

  def api() do
    Util.concat do
      abc()

      xyz()
    end
  end

  def abc() do
    "abc"
  end

  def xyz() do
    "xyz"
  end
end
