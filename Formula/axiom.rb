class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.105.0/axiom-macos-arm64.tar.gz"
  sha256 "b9db5f75066cb1ab8ca2e8426b761e9ffb47d0905a32b28079092b747d03129b"
  version "0.105.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
