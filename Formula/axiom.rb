class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.1.108/axiom-macos-arm64.tar.gz"
  sha256 "f504e696ce9d98af323b333141d85e433e8bbca3362366d747226f682d52789e"
  version "0.1.108"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
