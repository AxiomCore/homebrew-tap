class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.147.2/axiom-macos-arm64.tar.gz"
  sha256 "2ca1f554a3f3a433d754483efe7006bbe453fdf4d184ed6aaa2e00f094eddeb7"
  version "0.147.2"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
