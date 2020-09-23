defmodule Gen.Calculator do
    use GenServer
    #Client
    def start_link do
        GenServer.start_link(__MODULE__, 0)
    end

    def value(pid) do
        GenServer.call(pid, :value)
    end

    def add(pid, value) do
        GenServer.cast(pid, {:add, value})
    end

    def substract(pid, value) do
        GenServer.cast(pid, {:substract, value})
    end

    def multiply(pid, value) do
        GenServer.cast(pid, {:multiply, value})
    end 

    def divide(pid, value) do
        GenServer.cast(pid, {:divide, value})
    end

    #Server
    def init(message) do
        {:ok, message}
    end

    def handle_call(:value, _form, value) do
        {:reply, value, value}
    end

    def handle_cast({:add, value}, result) do
        result= result + value
        {:noreply, result}
    end

    def handle_cast({:substract, value}, result) do
        result= result - value
        {:noreply, result}
    end

    def handle_cast({:multiply, value}, result) do
        result= result * value
        {:noreply, result}
    end

    def handle_cast({:divide, value}, result) do
        result= result / value
        {:noreply, result}
    end
end