defmodule Calc do
    use Application
    def start(_, _) do
        Supervisor.Calculator.start_link
    end
end