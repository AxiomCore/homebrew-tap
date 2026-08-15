class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.126.0/axiom-macos-arm64.tar.gz"
  sha256 "466ae9071f3781dacb8573c35b6a31e3a7d25486bbc3f0d56c9301d9499776dd"
  version "0.126.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
