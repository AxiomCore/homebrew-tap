class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.39.0/axiom-macos-arm64.tar.gz"
  sha256 "7b3fb948ad7e1eb1bf18620a20fb73e7e2cac90630bf178518d31dd91f8c57ce"
  version "0.39.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
