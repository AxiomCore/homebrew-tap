class Axiom < Formula
  desc "Axiom CLI"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.55/axiom-macos-arm64.tar.gz"
  sha256 "25e64bd9b433a98745bcedbf54ce5fbc5e18212c4512d9c7a733a711506196b7"
  version "0.0.55"

  depends_on "acore"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
