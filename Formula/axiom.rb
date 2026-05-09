class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.75.0/axiom-macos-arm64.tar.gz"
  sha256 "0839425f8962c884735d5bedbec0cab523490dbfd096ef5433b3a97d567c56c0"
  version "0.75.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
