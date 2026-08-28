class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.137.0/axiom-macos-arm64.tar.gz"
  sha256 "4fb6436eaa75fbe0c0d05110ed7b1efdc6921175c01e829bd89484dbca799bd9"
  version "0.137.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
