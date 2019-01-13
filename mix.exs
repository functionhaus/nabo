defmodule Nabo.Mixfile do
  use Mix.Project

  @version "1.0.3"

  def project do
    [app: :nabo,
     version: @version,
     elixir: "~> 1.7",
     deps: deps(),
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     organization: "functionhaus",
     description: description(),
     package: package(),
     name: "Nabo",
     docs: [source_ref: "v#{@version}",
            main: "Nabo",
            canonical: "http://hexdocs.pm/nabo",
            source_url: "https://github.com/functionhaus/nabo"]]
  end

  def application do
    [applications: [:logger]]
  end

  defp deps do
    [
      {:earmark, "~> 1.3", optional: true},
      {:jason, "~> 1.1", optional: true},
      {:ex_doc, "~> 0.19", only: :dev, runtime: false}
    ]
  end

  defp package do
    [maintainers: ["Mike Zazaian, Cẩm Huỳnh"],
     licenses: ["Apache 2, MIT"],
     links: %{"GitHub" => "https://github.com/functionhaus/nabo"},
     files: ~w(mix.exs README.md lib)]
  end

  defp description do
    """
    A dead simple, extendable and fast blog engine in Elixir
    """
  end
end
