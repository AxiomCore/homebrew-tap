class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.0.84/axiom-macos-arm64.tar.gz"
  sha256 "d494230852802d0adbcf6bf13e924a35a2969aa289483f6d587eed34e0dd4a5e"
  version "0.0.84"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
