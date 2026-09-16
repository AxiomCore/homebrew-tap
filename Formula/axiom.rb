class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.145.0/axiom-macos-arm64.tar.gz"
  sha256 "2fe04f2c35641e2fa2a9e78d2d33eaeaee7628b8b2da5fd4d7ae667e2e633e94"
  version "0.145.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
