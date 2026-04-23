class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.1.95/axiom-macos-arm64.tar.gz"
  sha256 "22488344a744ddab10ae8d81b9d1ee07458cc9479372168c046852e06ba52032"
  version "0.1.95"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
