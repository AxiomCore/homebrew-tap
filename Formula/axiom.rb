class Axiom < Formula
  desc "Axiom CLI"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.17/axiom-macos-arm64.tar.gz"
  sha256 "3aae9565fb7b0b4388ba817785e37ef6f9f23858ebe08ca1ec1a91216b96ce1d"
  version "0.0.17"

  depends_on "acore"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
