class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.138.0/axiom-macos-arm64.tar.gz"
  sha256 "15619351f06587b53e9c6f00046a94a44fc9fa4809e0f3043f7460ec96fd21da"
  version "0.138.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
