class Axiom < Formula
  desc "Axiom CLI"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.25/axiom-macos-arm64.tar.gz"
  sha256 "5daa630aab37c754856c68da89d2a440a4402c16c90f0ea2e43a6557b73e45ac"
  version "0.0.25"

  depends_on "acore"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
