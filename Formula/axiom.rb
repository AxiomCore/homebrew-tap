class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.7.0/axiom-macos-arm64.tar.gz"
  sha256 "f6df758a6de666366f5e2f4b0863833a854e26208d5bc3bb806e7341c8885447"
  version "0.7.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
