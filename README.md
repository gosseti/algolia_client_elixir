# AlgoliaClientElixir

AlgoliaClientElixir is a simple algolia client using Finch for Http requests

Algolia.Index is the main module

## Installation

```elixir
def deps do
  [
    {:algolia_client_elixir, github: "hlista/algolia_client_elixir", branch: "main"}
  ]
end
```

### Config
Set the following in your applications config.exs
```elixir
config :algolia,
  api_key: <YOUR_ALGOLIA_API_KEY>,
  application_id: <YOUR_ALGOLIA_APPLICATION_ID>
```
  
### Index
Initialize an index
```elixir
Algolia.Index.init_index("index_name")
```

Pass index into an index operation
```elixir
"index_name"
|> Algolia.Index.init_index()
|> Algolia.Index.set_settings(settings)
```
