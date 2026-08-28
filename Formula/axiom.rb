class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.135.0/axiom-macos-arm64.tar.gz"
  sha256 "7b760ce9166b220e53d3078ea64c19b95353ab7983274ec57a5cb02a609ff8e4"
  version "0.135.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
