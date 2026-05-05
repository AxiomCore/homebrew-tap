class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.69.0/axiom-macos-arm64.tar.gz"
  sha256 "88acb27530fd70d60580922ad2729c9f37e61ef1e1991332041f77d4e898dcc6"
  version "0.69.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
