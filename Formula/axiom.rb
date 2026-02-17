class Axiom < Formula
  desc "Axiom CLI"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.57/axiom-macos-arm64.tar.gz"
  sha256 "984e619eac932663edd22f2c4fa9ba0c4946d1c4025beb3ad6c9908e690ed41d"
  version "0.0.57"

  depends_on "acore"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
