defmodule TweetApiTest do
  use ExUnit.Case
  doctest TweetApi

  test "greets the world" do
    assert TweetApi.hello() == :world
  end
end
