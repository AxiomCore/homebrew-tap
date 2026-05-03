class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.31.0/axiom-macos-arm64.tar.gz"
  sha256 "f04b0e6ebab2cee8f7bbff8077b97428e728e4f3b039ce7da2c3a021ec9b6910"
  version "0.31.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
