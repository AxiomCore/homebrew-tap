class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.90.0/axiom-macos-arm64.tar.gz"
  sha256 "b0149623b83aad3b822b1e77399cec4466db2e6164102921392295fcc65c34b5"
  version "0.90.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
