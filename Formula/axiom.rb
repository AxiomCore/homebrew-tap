class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.8.0/axiom-macos-arm64.tar.gz"
  sha256 "330e7ad7da143d3e13a1a491f6345989c22da47dd412e4a5dce838f36bd2e2c4"
  version "0.8.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
