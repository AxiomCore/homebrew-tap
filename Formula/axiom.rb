class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.14.0/axiom-macos-arm64.tar.gz"
  sha256 "a7f512e9a018ae93df7489a83371a08d2f2a776dc5a44e5653cfa14eded7965f"
  version "0.14.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
