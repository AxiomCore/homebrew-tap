class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.63.0/axiom-macos-arm64.tar.gz"
  sha256 "f4e3497eb77a70d42fbb20de169baa4a90a10e82fd5963fa7a092e068153eeeb"
  version "0.63.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
