class Axiom < Formula
  desc "Axiom CLI"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.12/axiom-macos-arm64.tar.gz"
  sha256 "aa1b5a7820fcf842318ac446ef906295a1f39c08945b5fbd3076f35338465c15"
  version "0.0.12"

  depends_on "acore"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
