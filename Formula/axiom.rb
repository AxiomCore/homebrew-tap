class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.51.0/axiom-macos-arm64.tar.gz"
  sha256 "214d68bb1946e198e2c51329c377b42f2670c9ca1b7c99e0a29a9c2d4735cabd"
  version "0.51.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
