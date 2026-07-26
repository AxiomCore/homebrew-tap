class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.118.0/axiom-macos-arm64.tar.gz"
  sha256 "e9621e08a7b9c81d90cf7245a2c24c490b1bbc6034d0943fdc67613ee47693fe"
  version "0.118.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
