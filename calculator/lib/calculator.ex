defmodule Calculator do
  def start do
    spawn(fn->loop(0) end)
  end

  defp loop(currentVal) do
    newVal=receive do
      {:value, client} -> send(client, {:response, currentVal})
      currentVal
      {:add, value} -> currentVal + value
      {:substract, value} -> currentVal-value
      {:multiply, value} -> currentVal*value
      {:divide, value} -> currentVal/value
    end
    loop(newVal)
  end
  
  def value(server) do
    send(server, {:value, self()})
    receive do
      {:response, value} -> value
    end
  end

  def add(server, value) do 
    send(server, {:add, value})
    value(server)
  end
  
  def substract(server, value) do 
    send(server, {:substract, value})
    value(server)
  end

  def multiply(server, value) do
     send(server, {:multiply, value})
     value(server)
  end
  def divide(server, value) do
     send(server, {:divide, value})
     value(server)
  end
end

