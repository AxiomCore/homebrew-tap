class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.110.0/axiom-macos-arm64.tar.gz"
  sha256 "16caedff1096edd06c6b8ac908bc178cd90d95f9d9827fab9bbff1a5dbdd1422"
  version "0.110.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
