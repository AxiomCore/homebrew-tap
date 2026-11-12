class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/cli-v0.151.0/axiom-macos-arm64.tar.gz"
  sha256 "d2437e295226da8680d1058860b5d2e7d9e4414d578664711ce385215a6a5f3b"
  version "0.151.0"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
