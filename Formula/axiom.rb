class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.107.0/axiom-macos-arm64.tar.gz"
  sha256 "2de47b32325efc5e36c751d3da297c7fd0d6d0d25e99a87bdc1480271439705f"
  version "0.107.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
