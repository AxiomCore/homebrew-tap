class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.84.0/axiom-macos-arm64.tar.gz"
  sha256 "45c569fd54816b68edcc16ea0222c6b62308d31a699a29bbac73b5a02e4324bb"
  version "0.84.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
