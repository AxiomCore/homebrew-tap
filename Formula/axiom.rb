class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.0.87/axiom-macos-arm64.tar.gz"
  sha256 "f1798f871bc03bb566066999938068952fcda859ac67c58cd9f38792fcd4ed1a"
  version "0.0.87"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
