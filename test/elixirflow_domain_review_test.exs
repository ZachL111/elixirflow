defmodule Elixirflow.DomainReviewTest do
  use ExUnit.Case

  test "domain review lane" do
    item = %{signal: 78, slack: 38, drag: 13, confidence: 71}
    assert Elixirflow.DomainReview.score(item) == 226
    assert Elixirflow.DomainReview.lane(item) == "ship"
  end
end
