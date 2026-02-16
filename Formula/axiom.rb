class Axiom < Formula
  desc "Axiom CLI"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.31/axiom-macos-arm64.tar.gz"
  sha256 "cc39b11da2a674ddc3345ce3023d2015dc0ad505843394fb1a91dd3f69e86015"
  version "0.0.31"

  depends_on "acore"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
