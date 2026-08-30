class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.143.0/axiom-macos-arm64.tar.gz"
  sha256 "bdd2d4be4c8a2db68467b0f413571ae76bd0606e8ae0114a4254f922fd2c6cb7"
  version "0.143.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
