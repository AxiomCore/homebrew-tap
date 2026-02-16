class Axiom < Formula
  desc "Axiom CLI"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.26/axiom-macos-arm64.tar.gz"
  sha256 "bcae151c1f903941ec484e8daa663aae08690606134b9b456671f879fb66ada9"
  version "0.0.26"

  depends_on "acore"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
