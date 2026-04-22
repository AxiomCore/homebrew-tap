class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/0.1.93/axiom-macos-arm64.tar.gz"
  sha256 "89a75d701539e12428003f3ce1e8c3b38d561530255883c49d3b3174cf804f05"
  version "0.1.93"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
