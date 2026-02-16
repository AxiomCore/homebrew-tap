class Axiom < Formula
  desc "Axiom CLI"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.34/axiom-macos-arm64.tar.gz"
  sha256 "5d5f34350de88fa561e7968bc3868488deb7f070112e749c6f8fe3dc19039ea5"
  version "0.0.34"

  depends_on "acore"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
