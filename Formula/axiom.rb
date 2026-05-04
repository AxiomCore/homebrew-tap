class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.59.0/axiom-macos-arm64.tar.gz"
  sha256 "9000bc040587847212cbed5e6a5e5828a8d77032fd0fa9591b494f000664f771"
  version "0.59.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
