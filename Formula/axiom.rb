class Axiom < Formula
  desc "Axiom CLI"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.37/axiom-macos-arm64.tar.gz"
  sha256 "afce86c86cd39cbc1ebe557f3a60079fd431f924d57549d2f2389af44bca9d0a"
  version "0.0.37"

  depends_on "acore"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
