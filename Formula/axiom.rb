class Axiom < Formula
  desc "Axiom CLI"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.16/axiom-macos-arm64.tar.gz"
  sha256 "3223df90e96f1aac08c5339a1eb7c2acaf0e120ea2c363c819480396739bc925"
  version "0.0.16"

  depends_on "acore"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
