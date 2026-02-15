class Axiom < Formula
  desc "Axiom CLI"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.21/axiom-macos-arm64.tar.gz"
  sha256 "72c6514bbbfa844ad80fa72b2ad7920ea822a024b47be558bf6ec0bd43b8f187"
  version "0.0.21"

  depends_on "acore"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
