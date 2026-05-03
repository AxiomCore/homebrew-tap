class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.28.0/axiom-macos-arm64.tar.gz"
  sha256 "6d9f4622db11ce3be3cce2846583f2bf61bc77b407a41a6f2cefe7f0091728c5"
  version "0.28.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
