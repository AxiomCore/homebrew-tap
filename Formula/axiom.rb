class Axiom < Formula
  desc "Axiom CLI"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.59/axiom-macos-arm64.tar.gz"
  sha256 "1703093d29166f8fc6b6300e8d65166e0b96bbc1223fed2da175a8a948e7ded9"
  version "0.0.59"

  depends_on "acore"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
