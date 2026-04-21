class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.0.92/axiom-macos-arm64.tar.gz"
  sha256 "a8b4f2d24d712d069d6ed282d286b1b1e46f6ff6fb81b2ae6d654c8162bd4f83"
  version "0.0.92"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
