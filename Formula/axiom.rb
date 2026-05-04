class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.56.0/axiom-macos-arm64.tar.gz"
  sha256 "a46c156b6010017f450dc83e48ac25beceeacbd7438e4090983eef6a5cb1fdf3"
  version "0.56.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
