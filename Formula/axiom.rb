class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.26.0/axiom-macos-arm64.tar.gz"
  sha256 "38ec1884564b31ef2aa4df6ae72241e2c69992fd884d226e620bae1db99d8069"
  version "0.26.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
