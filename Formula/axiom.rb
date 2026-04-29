class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.1.102/axiom-macos-arm64.tar.gz"
  sha256 "ec5ae05209f5c901f1a64c1554e2a2700c8fab91053d3af7347d69f3fffb8c18"
  version "0.1.102"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
