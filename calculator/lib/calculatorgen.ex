defmodule Gen.Calculator do
    use GenServer
    #Client
    def start_link do
        GenServer.start_link(__MODULE__, 0, name: :calc)
    end

    def value do
        GenServer.call(:calc, :value)
    end

    def add(value) do
        GenServer.cast(:calc, {:add, value})
    end

    def substract(value) do
        GenServer.cast(:calc, {:substract, value})
    end

    def multiply(value) do
        GenServer.cast(:calc, {:multiply, value})
    end 

    def divide(value) do
        GenServer.cast(:calc, {:divide, value})
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