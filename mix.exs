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
     description: description(),
     package: package(),
     name: "Nabo",
     source_url: "https://github.com/functionhaus/nabo",
     homepage_url: "https://functionhaus.com",

     docs: [source_ref: "v#{@version}",
            main: "Nabo",
            logo: "assets/functionhaus_logo.png",
            canonical: "http://hexdocs.pm/nabo",
            source_url: "https://github.com/functionhaus/nabo"]]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
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
     organization: "functionhaus",
     links: %{"GitHub" => "https://github.com/functionhaus/nabo",
              "Docs" => "https://hexdocs.pm/conn_artist/"},
     files: ~w(mix.exs README.md lib)]
  end

  defp description do
    """
    A dead simple, extendable and fast blog engine in Elixir
    """
  end
end
