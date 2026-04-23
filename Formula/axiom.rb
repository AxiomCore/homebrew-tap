class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.1.95/axiom-macos-arm64.tar.gz"
  sha256 "a4f5d39c6aa641a63d26de6e4b9b227e94fd7f086fb6f48fc0d5bbe3177f0d11"
  version "0.1.95"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
