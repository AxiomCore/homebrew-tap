class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.123.0/axiom-macos-arm64.tar.gz"
  sha256 "7cdd42201b58702b7bdd8f9f06da01b41b8a3497b77038856f94d5484a181c12"
  version "0.123.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
