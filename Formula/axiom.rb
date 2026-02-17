class Axiom < Formula
  desc "Axiom CLI"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.50/axiom-macos-arm64.tar.gz"
  sha256 "af49a3bf34ed744e162c64a9abf889765b1e68831033f5109cf80f63a358fb95"
  version "0.0.50"

  depends_on "acore"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
