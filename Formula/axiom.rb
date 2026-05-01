class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.1.105/axiom-macos-arm64.tar.gz"
  sha256 "ef4631022c483469ab03dd32f897f9347333df7e56b08afe4518e8721de89038"
  version "0.1.105"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
