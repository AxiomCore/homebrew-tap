class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.36.0/axiom-macos-arm64.tar.gz"
  sha256 "f2bb9f36a4c1f417e0801197c245c8f66bb88c47ba2c0e04073c373550a51c56"
  version "0.36.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
