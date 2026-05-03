class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.34.0/axiom-macos-arm64.tar.gz"
  sha256 "780b4c24e07206a63129e6636f54c050044badf2c04e23c5faeb82a1ff45330f"
  version "0.34.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
