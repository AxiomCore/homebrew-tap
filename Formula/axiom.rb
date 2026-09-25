class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.147.0/axiom-macos-arm64.tar.gz"
  sha256 "0b67a85e510bbb4b7681d3079f6ada1c0ed89b9f87413e2022552e87356f8426"
  version "0.147.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
