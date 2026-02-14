class Axiom < Formula
  desc "Axiom CLI"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.6/axiom-macos-arm64.tar.gz"
  sha256 "ca00752de96181df8a7844da9bf42ae004edd74ced51be0a2bdf5eb744bc1aaf"
  version "0.0.6"

  depends_on "acore"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
