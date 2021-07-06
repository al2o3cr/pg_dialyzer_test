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
    ]
  end
end
