defmodule CommercePlatform.MixProject do
  use Mix.Project

  def project do
    [
      app: :commerce_platform,
      version: "0.1.0",
      elixir: "~> 1.7",
      elixirc_paths: elixirc_paths(Mix.env()),
      compilers: [:phoenix, :gettext] ++ Mix.compilers(),
      start_permanent: Mix.env() == :prod,
      aliases: aliases(),
      deps: deps()
    ]
  end

  # Configuration for the OTP application.
  #
  # Type `mix help compile.app` for more information.
  def application do
    [
      mod: {CommercePlatform.Application, []},
      extra_applications: [:logger, :runtime_tools, :timex, :absinthe_plug, :yamerl, :worldly]
    ]
  end

  # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  # Specifies your project dependencies.
  #
  # Type `mix help deps` for examples and options.
  defp deps do
    [
      {:phoenix, "~> 1.5.1"},
      {:phoenix_ecto, "~> 4.1"},
      {:ecto_sql, "~> 3.4"},
      {:postgrex, ">= 0.0.0"},
      {:phoenix_html, "~> 2.11"},
      {:phoenix_live_reload, "~> 1.2", only: :dev},
      {:phoenix_live_dashboard, "~> 0.2.0"},
      {:phoenix_live_view, "~> 0.14.1"},
      {:floki, ">= 0.0.0", only: :test},
      {:telemetry_metrics, "~> 0.4"},
      {:telemetry_poller, "~> 0.4"},
      {:gettext, "~> 0.11"},
      {:jason, "~> 1.0"},
      {:plug_cowboy, "~> 2.0"},
      {:comeonin, "~> 5.3.1"},
      {:argon2_elixir, "~> 2.0"},
      {:absinthe, "~> 1.4.0"},
      {:absinthe_plug, "~> 1.4.0"},
      {:absinthe_ecto, "~> 0.1.3"},
      {:dataloader, "~> 1.0.0"},
      {:guardian, "~> 2.0"},
      {:timex, "~> 3.5"},
      {:pdf_generator, "~> 0.6.2"},
      {:sneeze, "~> 1.1"},
      {:mailgun, "~> 0.1.2"},
      {:bodyguard, "~> 2.4"},
      {:yamerl, github: "yakaz/yamerl"},
      {:worldly, "~> 0.1.2"},
      {:faker, "~> 0.14.0"},
      {:absinthe_error_payload, "~> 1.0"},
      {:dlex, "~> 0.5.1"},
      {:cowlib, "~> 2.9.1", override: true}
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
      setup: ["deps.get", "ecto.setup", "cmd npm install --prefix assets"],
      "ecto.setup": ["ecto.create", "ecto.migrate", "run priv/repo/seeds.exs"],
      "ecto.reset": ["ecto.drop", "ecto.setup"],
      test: ["ecto.create --quiet", "ecto.migrate", "test"]
    ]
  end
end
