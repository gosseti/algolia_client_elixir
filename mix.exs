defmodule AlgoliaClientElixir.MixProject do
  use Mix.Project

  def project do
    [
      app: :algolia_client_elixir,
      version: "0.1.0",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package(),
      docs: docs()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {Algolia.Application, []}
    ]
  end

  defp package do
    [
      maintainers: ["Michael Hlista"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/hlista/algolia_client_elixir"},
      files: ~w(mix.exs README.md lib)
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:finch, "~> 0.11"},
      {:jason, "~> 1.0"}
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end

  defp docs do
    [
      main: "AlgoliaClientElixir",
      source_url: "https://github.com/hlista/algolia_client_elixir",
    ]
  end
end
