class Axiom < Formula
  desc "Axiom CLI"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.78/axiom-macos-arm64.tar.gz"
  sha256 "dbda151ba83d05811a31bd724bdff7697464daf20ba45cacbef7d2cebd4425f8"
  version "0.0.78"

  depends_on "acore"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
