class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.120.0/axiom-macos-arm64.tar.gz"
  sha256 "344e39e68d442ff543c1b065a1a602040f42117442c1cf7a29eecb9b2232e6af"
  version "0.120.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
