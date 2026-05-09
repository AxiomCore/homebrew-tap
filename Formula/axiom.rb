class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.76.0/axiom-macos-arm64.tar.gz"
  sha256 "9897e7d7ccf1464efb47cdf35b3a42bd16760c1b97c5e2a847ee905f4ae9d0df"
  version "0.76.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
