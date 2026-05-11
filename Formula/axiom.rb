class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.86.0/axiom-macos-arm64.tar.gz"
  sha256 "2ecccb8b04385623a6067a7d0d503c227a15f4b9b3eedd492f25557379cdcdb3"
  version "0.86.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
