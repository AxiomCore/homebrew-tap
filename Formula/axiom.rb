class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.141.0/axiom-macos-arm64.tar.gz"
  sha256 "affa0a0ad8ea80abf68774bed86bbcea32072eb471469fc78748550a5b5dc0f8"
  version "0.141.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
