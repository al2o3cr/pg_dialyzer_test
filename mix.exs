defmodule PgDialyzerTest.MixProject do
  use Mix.Project

  def project do
    [
      app: :pg_dialyzer_test,
      version: "0.1.0",
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:dialyxir, "~> 1.0", only: [:dev], runtime: false},
      {:jason, "~> 1.0"},
      {:postgrex, "~> 0.15.9"},
      {:geo_postgis, "~> 3.4"},
      {:ecto_sql, "~> 3.6.2"},
      {:telemetry, "~> 1.0", override: true}
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end
end
