class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.1.111/axiom-macos-arm64.tar.gz"
  sha256 "5911fa4cf3c269e6d6d8cc6b68d115067d74dac626cd55a292054f7a603d659f"
  version "0.1.111"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
