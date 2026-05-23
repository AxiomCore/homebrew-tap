class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.95.0/axiom-macos-arm64.tar.gz"
  sha256 "0e29f9e68bf45ca28d1326ad1e861912745314e9f9a5b3034dde7e78d529f7c4"
  version "0.95.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
