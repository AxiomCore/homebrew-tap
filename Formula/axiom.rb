class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.1.109/axiom-macos-arm64.tar.gz"
  sha256 "386837a78b33fb6cff2cc5aefa8a5778582e1b7320805f518f63dec0ce5daeed"
  version "0.1.109"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
