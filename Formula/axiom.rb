class Axiom < Formula
  desc "Axiom CLI"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.20/axiom-macos-arm64.tar.gz"
  sha256 "9b97b2d02296b6fd8522824a7da8931992edeeb21a45a2e31053630a792763c5"
  version "0.0.20"

  depends_on "acore"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
