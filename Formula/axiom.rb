class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.2.0/axiom-macos-arm64.tar.gz"
  sha256 "e2b8c0eb30ddc8fcdb6a6eff18d45ea246b7f17a1a773f5be0cddb8aa17f2b31"
  version "0.2.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
