class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.129.0/axiom-macos-arm64.tar.gz"
  sha256 "a976a2a303edee785ca50189f9d5d7af4f088258adb9dc6cc9887d6c2b78dd2e"
  version "0.129.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
