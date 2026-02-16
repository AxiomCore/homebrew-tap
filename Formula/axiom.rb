class Axiom < Formula
  desc "Axiom CLI"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.44/axiom-macos-arm64.tar.gz"
  sha256 "8f179b16e25cac605df82976abd8e15beefaaf01c23346a1c359e74466ce609b"
  version "0.0.44"

  depends_on "acore"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
