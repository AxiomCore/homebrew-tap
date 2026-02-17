class Axiom < Formula
  desc "Axiom CLI"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.48/axiom-macos-arm64.tar.gz"
  sha256 "00f5e235c47c8baaef3c3eabedf15d237f025e4a11ceb8f9946144d782fd3ef6"
  version "0.0.48"

  depends_on "acore"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
