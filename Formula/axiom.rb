class Axiom < Formula
  desc "Axiom CLI"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.35/axiom-macos-arm64.tar.gz"
  sha256 "49ea74392cf1ed1e7cf4b6d0001b134f4ca79127d8bb023045fc18abd104fe47"
  version "0.0.35"

  depends_on "acore"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
