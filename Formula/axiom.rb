class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.47.0/axiom-macos-arm64.tar.gz"
  sha256 "54838b2e0b6b8b00825a1d6beacbb1cb5d0bc2b577f58518e8476286f9d0d7f6"
  version "0.47.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
