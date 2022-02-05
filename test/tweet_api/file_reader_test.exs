defmodule FileReaderTest do
  use ExUnit.Case
  import Mock
  import TweetApi.FileReader


  doctest TweetApi.FileReader
  test "passing a path shiould return a string" do
    str = get_string_to_tweet(
      Path.join("#{:code.priv_dir(:tweet_api)}", "sample.txt"))

    assert str != nil
  end

  test "Will not return a string longer than 140 chars" do
    str = get_string_to_tweet(
      Path.join("#{:code.priv_dir(:tweet_api)}", "test/too_long.txt"))

    assert String.length(str) <= 140
  end

  test "And empty string should return an empty string" do
    str = pick_string("")

    assert str == ""
  end

  test "The string should be trimmed" do
    with_mock File, [read!: fn(_) -> " ABC " end] do
      str = get_string_to_tweet("")

      str == "ABC"
    end

  end
end
