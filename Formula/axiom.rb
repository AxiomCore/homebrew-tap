class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.1.101/axiom-macos-arm64.tar.gz"
  sha256 "c7b72c04e4ed1242ba32fafecce07c3d6f15ab5e4a22970d4363b555c21542d4"
  version "0.1.101"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
