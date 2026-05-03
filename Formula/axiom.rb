class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.22.0/axiom-macos-arm64.tar.gz"
  sha256 "528198a6a10394d294cbaff8b60fb60b7c6b879ec1df99c013eb9a2f815608b2"
  version "0.22.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
