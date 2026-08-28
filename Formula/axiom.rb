class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.134.0/axiom-macos-arm64.tar.gz"
  sha256 "d1d2a41481b7a3272807251b02ae24d7b46626bd4816ef644acc5ccd06811ae0"
  version "0.134.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
