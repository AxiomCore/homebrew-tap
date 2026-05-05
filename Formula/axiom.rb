class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.60.0/axiom-macos-arm64.tar.gz"
  sha256 "6c56be4b6870b0cd0fe3fce7baf89f1be77ccb9afe1538a9aceca576d268ef91"
  version "0.60.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
