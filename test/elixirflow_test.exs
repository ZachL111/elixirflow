defmodule ElixirflowTest do
  use ExUnit.Case

  test "fixture decisions" do
    signal_case_1 = %{demand: 79, capacity: 86, latency: 15, risk: 24, weight: 8}
    assert Elixirflow.score(signal_case_1) == 64
    assert Elixirflow.classify(signal_case_1) == "review"
    signal_case_2 = %{demand: 69, capacity: 107, latency: 27, risk: 16, weight: 11}
    assert Elixirflow.score(signal_case_2) == 91
    assert Elixirflow.classify(signal_case_2) == "review"
    signal_case_3 = %{demand: 94, capacity: 103, latency: 17, risk: 15, weight: 13}
    assert Elixirflow.score(signal_case_3) == 196
    assert Elixirflow.classify(signal_case_3) == "accept"
  end
end
