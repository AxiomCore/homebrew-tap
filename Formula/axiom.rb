class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.67.0/axiom-macos-arm64.tar.gz"
  sha256 "94b0f142316c7055479da603b3e77d2e08799822ce20dd6cf539c2e3316b1cf8"
  version "0.67.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
