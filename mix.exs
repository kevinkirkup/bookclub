defmodule Bookclub.MixProject do
  use Mix.Project

  def project do
    [
      app: :bookclub,
      version: "0.1.0",
      elixir: "~> 1.11",
      elixirc_paths: elixirc_paths(Mix.env()),
      elixirc_options: [warnings_as_errors: true, debug_info: true],
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      aliases: aliases(),
      preferred_cli_env: ["test.ci": :test, "test.dev": :test],
      test_coverage: test_coverage()
    ]
  end

  # Aliases are shortcuts or tasks specific to the current project.
  # For example, to install project dependencies and perform other setup tasks, run:
  #
  #     $ mix setup
  #
  # See the documentation for `Mix` for more info on aliases.
  defp aliases do
    [
      "test.ci": ["test --cover"],
      "test.dev": ["test --cover --stale"],
      check: ["credo", "format --check-formatted"]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:credo, "~> 1.5.4", only: [:dev, :test], runtime: false},
      {:dialyxir, "~> 1.0.0", only: [:dev, :test], runtime: false},
      {:mox, "~> 1.0.0", only: [:test]}
    ]
  end

  defp test_coverage() do
    [
      # These are all either Phoenix generated scaffolding
      # or unit test helpers
      ignore_modules: [],
      summary: [threshold: 85]
    ]
  end
end
