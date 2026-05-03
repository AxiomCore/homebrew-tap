class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.25.0/axiom-macos-arm64.tar.gz"
  sha256 "99b54578d79e7609e9a4f134a972b4b0a1fc4dc9483bad71e5dc5cc619858522"
  version "0.25.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
