class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.0.88/axiom-macos-arm64.tar.gz"
  sha256 "b29a462df19c0c02472288518ed157417d9b35cbf55043fa500474d4f42de83d"
  version "0.0.88"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
