class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.147.1/axiom-macos-arm64.tar.gz"
  sha256 "b09433c68ff6eb54bb1e6de8b3e21b106f802f9cbf2fd4db749f901afe79a27d"
  version "0.147.1"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
