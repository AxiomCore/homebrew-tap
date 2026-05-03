class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.22.0/axiom-macos-arm64.tar.gz"
  sha256 "592aa4026d88af6075d0d0ff77f52002039e3fe53c319259bcf977bf09b420d5"
  version "0.22.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
