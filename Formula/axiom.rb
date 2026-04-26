class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.1.98/axiom-macos-arm64.tar.gz"
  sha256 "4885ccc5f621ceac0d1ca24f8b47eff6323118e2cb39d792c1410a611c3c6565"
  version "0.1.98"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
