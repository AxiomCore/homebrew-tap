class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.92.0/axiom-macos-arm64.tar.gz"
  sha256 "369c373ea2aec04110b8cf4075c0dc6908ff78e418919e2cd11fcfed78535ac8"
  version "0.92.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
