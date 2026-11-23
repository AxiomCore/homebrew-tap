class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/cli-v0.158.0/axiom-macos-arm64.tar.gz"
  sha256 "e1507c9cfd764e4afcef4c3c9d42c36696711fc2a92e60a45f5b7d9c06055b08"
  version "0.158.0"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
