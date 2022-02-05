defmodule TweetApi.FileReader do


  @doc """
  Reads a file and returns a list of lines. All lines are trimmed,
  and line greater than 140 chars are eliminated.

  iex> TweetApi.FileReader.get_string_to_tweet("priv/test/too_long.txt")
  "I thought I heard them say..."
  """
  @spec get_string_to_tweet(
          binary
          | maybe_improper_list(
              binary | maybe_improper_list(any, binary | []) | char,
              binary | []
            )
        ) :: list
  def get_string_to_tweet(path) do
    File.read!(path)
    |> pick_string()
  end

  @spec pick_string(binary) :: any
  def pick_string(str) do
    str
    |> String.split("\n")
    |> Enum.map(&String.trim/1)
    |> Enum.filter(&String.length(&1) <= 140)
    |> Enum.random()
  end
end
