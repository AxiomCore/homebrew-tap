class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.71.0/axiom-macos-arm64.tar.gz"
  sha256 "196325d01c4ccbba4cddbc181bfa2b9d0d7369c77ce5e567e5a1f2afcfba82c3"
  version "0.71.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
