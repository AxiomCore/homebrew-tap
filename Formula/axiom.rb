class Axiom < Formula
  desc "Axiom CLI"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.68/axiom-macos-arm64.tar.gz"
  sha256 "c3e6e69d9b0b31390c4ec9e25d73cb62cff8cb4985f31586676911e06a90c6f5"
  version "0.0.68"

  depends_on "acore"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
