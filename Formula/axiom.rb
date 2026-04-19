class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.0.83/axiom-macos-arm64.tar.gz"
  sha256 "5e2d0a18968ed7feb6d7b302b5a8db65222410af242d8a26106a0e3aefbc7e33"
  version "0.0.83"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
