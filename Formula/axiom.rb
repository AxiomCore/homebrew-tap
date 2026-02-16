class Axiom < Formula
  desc "Axiom CLI"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.30/axiom-macos-arm64.tar.gz"
  sha256 "8e44aaf10d99464881ef51a97849ccddb8534f44210d33c475eaacb70eaa4da8"
  version "0.0.30"

  depends_on "acore"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
