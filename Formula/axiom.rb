class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.44.0/axiom-macos-arm64.tar.gz"
  sha256 "680dc74dc095f90903f43943732c32adc8868069d81e17dad1f0bf6603af3617"
  version "0.44.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
