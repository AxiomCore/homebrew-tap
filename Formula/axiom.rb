class Axiom < Formula
  desc "Axiom CLI"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.45/axiom-macos-arm64.tar.gz"
  sha256 "fad6999107579cb5ee60eaa9269cef20f38cec17aff64d963908d530ebfe3458"
  version "0.0.45"

  depends_on "acore"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
