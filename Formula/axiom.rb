class Axiom < Formula
  desc "Axiom CLI"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.36/axiom-macos-arm64.tar.gz"
  sha256 "839ccef9138f39d8e0184ad12a14052ec60a8d9de333dbf87329f12e61a3c376"
  version "0.0.36"

  depends_on "acore"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
