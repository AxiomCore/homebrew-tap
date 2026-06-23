class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.114.0/axiom-macos-arm64.tar.gz"
  sha256 "910a40be58a6fdab41215810376382522b8e565294691b302ba15900b8038cd7"
  version "0.114.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
