class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.1.93/axiom-macos-arm64.tar.gz"
  sha256 "88621c31a2342b891c86eeaceae188bc9e1bdca18e5e5015f899064e196b0df0"
  version "0.1.93"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
