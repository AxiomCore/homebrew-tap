class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.88.0/axiom-macos-arm64.tar.gz"
  sha256 "d4f4b5ad1cabe38e48c8b559eec8993f9241c0a72da30ae2cae394ba4e07b2c4"
  version "0.88.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
