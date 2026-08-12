class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.125.0/axiom-macos-arm64.tar.gz"
  sha256 "c2aef9e6f4cc9352b74d9c51650cc29f5d99ce5978e75c543dbe91c1eae0287a"
  version "0.125.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
