class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.1.110/axiom-macos-arm64.tar.gz"
  sha256 "e8775cf00ada1c91c2da2b968797df5399ae790acfe85c7befb7339f19a2b36f"
  version "0.1.110"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
