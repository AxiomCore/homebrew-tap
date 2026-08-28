class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.133.0/axiom-macos-arm64.tar.gz"
  sha256 "9d03a60629399c408bda73f8ef234a335145965b35b6d1bc265f76aa443eb87b"
  version "0.133.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
