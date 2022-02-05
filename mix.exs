defmodule TweetApi.MixProject do
  use Mix.Project

  def project do
    [
      app: :tweet_api,
      version: "0.1.0",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {TweetApi.Application, []},
      env: [
            acess_token:  "some_key",
            access_token_secret: "some_key",
            consumer_key: "some_key",
            consumer_secret: "some_key"
          ]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:credo, "~> 1.2"},
      {:quantum, "~> 3.0"},
      {:extwitter, "~> 0.13.0"}
    ]
  end
end
