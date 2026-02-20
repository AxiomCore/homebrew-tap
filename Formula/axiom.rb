class Axiom < Formula
  desc "Axiom CLI"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.62/axiom-macos-arm64.tar.gz"
  sha256 "357f3007b8ce7871b1b115af95dad54688cbbea9d896605514977a665aea8214"
  version "0.0.62"

  depends_on "acore"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
