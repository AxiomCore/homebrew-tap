class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.41.0/axiom-macos-arm64.tar.gz"
  sha256 "3c6abdad02ec6bf98cea43ac2b3741b5fa81f3e36279f0f2a4bacac167ae7ca4"
  version "0.41.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
