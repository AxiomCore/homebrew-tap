class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.1.113/axiom-macos-arm64.tar.gz"
  sha256 "52ab31585cf00f1852735160cb6828280eeb64221ab8546636b6ac5b862cf3ae"
  version "0.1.113"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
