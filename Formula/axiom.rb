class Axiom < Formula
  desc "Axiom CLI"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.33/axiom-macos-arm64.tar.gz"
  sha256 "38d7523b1b55d5d5976881cb0788dd4557d1b22f79fa4ac8c39b4c14d3d74861"
  version "0.0.33"

  depends_on "acore"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
