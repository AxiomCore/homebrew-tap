class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.33.0/axiom-macos-arm64.tar.gz"
  sha256 "496a5ce4ea3a8b5a90556023f4bc2add35def1093fa72d3c866afbf2dce64b2d"
  version "0.33.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
