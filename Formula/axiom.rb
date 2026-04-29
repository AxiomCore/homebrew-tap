class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.1.105/axiom-macos-arm64.tar.gz"
  sha256 "d8cf12678166cad7fd0cd88830bf8804382bc13ac31b69c78ff0947d36473c7e"
  version "0.1.105"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
