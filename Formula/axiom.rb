class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.38.0/axiom-macos-arm64.tar.gz"
  sha256 "0b8b962f6266d6aee6e4138aa8fbf07d4bdf99f17debf507fa14ac64ed7750fc"
  version "0.38.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
