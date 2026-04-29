class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.1.106/axiom-macos-arm64.tar.gz"
  sha256 "392bd5c979c1de978f51e33e7d440f285a0b7b826ae03b15f7417a4153add659"
  version "0.1.106"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
