class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.98.0/axiom-macos-arm64.tar.gz"
  sha256 "a94d851c07380ce71013160eaa5cc470dc1eb0df9b20dfb39a567cb6725eee77"
  version "0.98.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
