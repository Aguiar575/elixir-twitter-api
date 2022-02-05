defmodule TweetApi.Tweet do
  @spec send(any) :: nil | ExTwitter.Model.Tweet.t()
  def send(string) do
    ExTwitter.configure(
      :process,
      [
        consumer_key: Application.get_env(:tweet_api, :consumer_key),
        consumer_secret: Application.get_env(:tweet_api, :consumer_secret),
        access_token: Application.get_env(:tweet_api, :access_token),
        access_token_secret: Application.get_env(:tweet_api, :access_token_secret)
      ])
    ExTwitter.update(string)
  end
end
