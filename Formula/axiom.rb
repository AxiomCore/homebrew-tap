class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.19.0/axiom-macos-arm64.tar.gz"
  sha256 "56dd2e1df19ebcaa1c9bb332800d5d81eb6baeda02d46365c60045604b381205"
  version "0.19.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
