class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/cli-v0.148.2/axiom-macos-arm64.tar.gz"
  sha256 "64df63ed6d0480578e64b1eb08374728012f01a0c934d0328dec9741faa367bd"
  version "0.148.2"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
