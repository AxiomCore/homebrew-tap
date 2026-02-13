class Axiom < Formula
  desc "Axiom CLI"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.5/axiom-macos-arm64.tar.gz"
  sha256 "d553d20f4d20529a6a169d9a681a72d9c9208920ba8c156c87fd906a50d9bbfb"
  version "0.0.5"

  depends_on "acore"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
