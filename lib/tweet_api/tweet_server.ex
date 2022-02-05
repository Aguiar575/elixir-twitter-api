defmodule TweetApi.TweetServer do
  use GenServer

  @spec start_link :: :ignore | {:error, any} | {:ok, pid}
  def start_link() do
    GenServer.start_link(__MODULE__, :ok, name: :tweet_server)
  end

  @spec init :: {:ok, %{}}
  def init() do
    {:ok, %{}}
  end

  def handle_cast({:tweet, tweet}, _) do
    TweetApi.Tweet.send(tweet)
    {:noreply, %{}}
  end

  @spec tweet(any) :: :ok
  def tweet(tweet) do
    GenServer.cast(:tweet_server, {:tweet, tweet})
  end
end
