class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/cli-v0.153.0/axiom-macos-arm64.tar.gz"
  sha256 "a08f9a10634434f34774bda1a983425a03c3cf8fd88bba6f8853552457cddf02"
  version "0.153.0"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
