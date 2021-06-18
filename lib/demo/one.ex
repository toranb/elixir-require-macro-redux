defmodule Demo.One do
  use Demo.Concat

  def api() do
    concat do
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
