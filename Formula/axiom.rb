class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.15.0/axiom-macos-arm64.tar.gz"
  sha256 "16d382b714ae426e53ecddae8db9e25ace487b4fc29311f92f8a64455fb43f73"
  version "0.15.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
