class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.30.0/axiom-macos-arm64.tar.gz"
  sha256 "d44a96a1538a490ad862ff49f29edddf36fadffb151e649297bb0ce526c7c62e"
  version "0.30.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
