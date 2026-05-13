class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.87.0/axiom-macos-arm64.tar.gz"
  sha256 "f88e91bb78cb8c70711818f6c3ef028cec1de306fae5eb257716d60232171a97"
  version "0.87.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
