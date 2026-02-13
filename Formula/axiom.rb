class Axiom < Formula
  desc "Axiom CLI"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.2/axiom-macos-arm64.tar.gz"
  sha256 "f7b26e653ab017b4fb03b6026afc2fe45462f1fa3c3b044b98737f25eaa251f2"
  version "0.0.2"

  depends_on "acore"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
