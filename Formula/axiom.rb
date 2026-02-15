class Axiom < Formula
  desc "Axiom CLI"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.18/axiom-macos-arm64.tar.gz"
  sha256 "06994c3b8619f9681cfe6a2480592edffa9e403b2fef05fdcee97dfa5a64703c"
  version "0.0.18"

  depends_on "acore"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
