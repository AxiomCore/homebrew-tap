class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.82.0/axiom-macos-arm64.tar.gz"
  sha256 "e90b2cca568084147a00ea691592b3633ccd96d68cd07158656f5bfc3574a39e"
  version "0.82.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
