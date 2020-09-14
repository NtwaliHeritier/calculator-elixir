defmodule Calculator do
  def start do
    spawn(fn->loop(0) end)
  end

  defp loop(currentVal) do
    newVal=receive do
      {:value, client_id} -> send(client_id, {:response, currentVal})
      {:add, value} -> currentVal+value
      {:substract, value} -> currentVal-value
      {:multiply, value} -> currentVal*value
      {:divide, value} -> currentVal/value
    end
    loop(newVal)
  end
end
