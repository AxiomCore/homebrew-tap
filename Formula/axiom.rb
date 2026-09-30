class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.147.4/axiom-macos-arm64.tar.gz"
  sha256 "18967a99a8b572cbd6005e334354c07ddeaa133957d7feb64e0798ff41e2baba"
  version "0.147.4"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
