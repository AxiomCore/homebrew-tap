class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/cli-v0.154.0/axiom-macos-arm64.tar.gz"
  sha256 "ccbefd5d32034fd00be094dcf63192e40bcce6a87b3d6975125c69b187a37554"
  version "0.154.0"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
