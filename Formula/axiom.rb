class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.48.0/axiom-macos-arm64.tar.gz"
  sha256 "a52c7de372430409b4728ef73cb03d51c3ad2ae2c246f448eb931115f0e6d036"
  version "0.48.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
