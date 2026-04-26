class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.1.100/axiom-macos-arm64.tar.gz"
  sha256 "842f025d78f498c1f9a14d818ea6013799d0c7ae6b9f3667d64a860ce567fc73"
  version "0.1.100"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
