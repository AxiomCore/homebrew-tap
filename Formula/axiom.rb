class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.68.0/axiom-macos-arm64.tar.gz"
  sha256 "a104cea32376ac34370084a595c8fc03111d13ae6007cd179c8959d70d0ade7a"
  version "0.68.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
