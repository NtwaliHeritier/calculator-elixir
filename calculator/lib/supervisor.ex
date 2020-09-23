defmodule Supervisor.Calculator do
    use Supervisor
    def start_link do
        Supervisor.start_link(__MODULE__, [])
    end

    def init(_) do
        children=[
            worker(Gen.Calculator, [])
        ]
        supervise(children, strategy: :one_for_one)
    end
end