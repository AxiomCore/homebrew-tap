class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.54.0/axiom-macos-arm64.tar.gz"
  sha256 "d12ecbd49802af1248098c159279f3a2a4a702420de0ee619b42b888b1434002"
  version "0.54.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
