class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.89.0/axiom-macos-arm64.tar.gz"
  sha256 "20f3a185a8f8414145ce9e75965ece240d88939673bd9d44bbd073b52654f687"
  version "0.89.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
