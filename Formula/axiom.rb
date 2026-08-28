class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.136.0/axiom-macos-arm64.tar.gz"
  sha256 "4782096886e9d2e8dc3adc6827e744511f50cd96efca7b378e54a018316d1b81"
  version "0.136.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
