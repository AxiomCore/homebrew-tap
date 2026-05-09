class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.78.0/axiom-macos-arm64.tar.gz"
  sha256 "f368adbeebb952ef204500050ac6a5b2b95b6844abf129d4fa9ae86ed970f6d3"
  version "0.78.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
