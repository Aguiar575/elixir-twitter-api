
# Tweet Api

this project uses the twitter API to send tweets automatically.
Messages are selected randomly, and sent every 1 minute by a GenServer.


## Installation
- first you need to create an application through twitter.
- then paste the keys in place of "some_key" inside the mix.exs file.
```elixir
env: [
    acess_token:  "some_key",
    access_token_secret: "some_key",
    consumer_key: "some_key",
    consumer_secret: "some_key"
    ]
```
- the messages are inside the "samples.txt" file which in turn is inside the priv folder.
- mix deps.get
- mix test 
- mix run --no-halt

