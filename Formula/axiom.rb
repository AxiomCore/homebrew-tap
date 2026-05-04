class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.49.0/axiom-macos-arm64.tar.gz"
  sha256 "ffd3fd740728fc206ae891f31da61f79acc07d36a89da7c0866a8c25466847db"
  version "0.49.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
