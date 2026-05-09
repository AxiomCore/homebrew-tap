class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.74.0/axiom-macos-arm64.tar.gz"
  sha256 "bbc59f8bab8171a8e9d1f643c3daeb7f0e1ea2be4c557a8ae8ac524caf1830f1"
  version "0.74.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
