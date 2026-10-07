class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/cli-v0.148.1/axiom-macos-arm64.tar.gz"
  sha256 "15f46eff35435cd55da3fe18d95b672e0218dd76349b012239336b3e597aa859"
  version "0.148.1"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
