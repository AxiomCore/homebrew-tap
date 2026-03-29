class Axiom < Formula
  desc "Axiom CLI"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.72/axiom-macos-arm64.tar.gz"
  sha256 "710422efdf796bdac6553fa18f79c0483b88690cd1d3e21edd0d37203ddbbab2"
  version "0.0.72"

  depends_on "acore"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
