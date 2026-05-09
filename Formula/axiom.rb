class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.79.0/axiom-macos-arm64.tar.gz"
  sha256 "36abd4a9f826de5d8d46adf1f74f8da4385a6c1f5e4adacc8866f7e296c1731b"
  version "0.79.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
