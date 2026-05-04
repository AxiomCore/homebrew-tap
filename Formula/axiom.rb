class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.42.0/axiom-macos-arm64.tar.gz"
  sha256 "94ad6223a0ad3463413bad4469c7c6001c2459b677c0694451daa37bb23a529a"
  version "0.42.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
