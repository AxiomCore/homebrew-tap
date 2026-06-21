class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.108.0/axiom-macos-arm64.tar.gz"
  sha256 "b010c802019db4b43a8c6075e67aa1432623d2571304bd692dc5cd40ca9a00ad"
  version "0.108.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
