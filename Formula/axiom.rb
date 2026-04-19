class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.0.85/axiom-macos-arm64.tar.gz"
  sha256 "3da3128e0948660dc2d604c749361c4e93544cc2461c6e2c6f086cb7d81ee979"
  version "0.0.85"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
