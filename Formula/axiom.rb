class Axiom < Formula
  desc "Axiom CLI"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.52/axiom-macos-arm64.tar.gz"
  sha256 "8e52c87432cdf4c2a231c7f07f6331d5fd6b517e82d0397e9761f327446d120d"
  version "0.0.52"

  depends_on "acore"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
