class Axiom < Formula
  desc "Axiom CLI"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.65/axiom-macos-arm64.tar.gz"
  sha256 "3951124a865d25d027d090b5571fe75269dfed9c03fe377c2f0bae44c3b0fe60"
  version "0.0.65"

  depends_on "acore"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
