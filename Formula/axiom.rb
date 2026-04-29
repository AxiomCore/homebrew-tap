class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.1.104/axiom-macos-arm64.tar.gz"
  sha256 "e1accd6de42039a801e50ec4cff4ccdc16b3fb75ff797d1e93bc92d4b035fe07"
  version "0.1.104"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
