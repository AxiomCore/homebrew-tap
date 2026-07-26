class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.121.0/axiom-macos-arm64.tar.gz"
  sha256 "dbc6216d8153de3d2334aacbac6ce16e4ff8cddc25d1b0882d29dd11f26f3948"
  version "0.121.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
