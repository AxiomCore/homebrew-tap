class Axiom < Formula
  desc "Axiom CLI"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.63/axiom-macos-arm64.tar.gz"
  sha256 "d3d1268e19aa897cd749e9216743933826c7c1ba169ccf9bb0ed1267fab36014"
  version "0.0.63"

  depends_on "acore"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
