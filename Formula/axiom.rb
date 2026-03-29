class Axiom < Formula
  desc "Axiom CLI"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.71/axiom-macos-arm64.tar.gz"
  sha256 "943fe11dd1f0cb78391a55291cd0b6ca2b79133ba5be9adc967b9cdb9c6608d5"
  version "0.0.71"

  depends_on "acore"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
