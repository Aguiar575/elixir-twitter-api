use Mix.Config

config :tweet_api, TweetApi.Scheduler, jobs: [
  {"* * * *", fn ->
    TweetApi.FileReader.get_string_to_tweet(
      Path.join("#{:code.priv_dir(:tweet_api)}", "sample.txt")
    )
    |> TweetApi.TweetServer.tweet()
  end}
]
