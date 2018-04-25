defmodule D2D.MixProject do
  use Mix.Project

  def project do
    [
      app: :d2d,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {D2D.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # documentation generator
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false}
    ]
  end
end
