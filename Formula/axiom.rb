class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/cli-v0.149.1/axiom-macos-arm64.tar.gz"
  sha256 "6747941bb3ff5917baac691b8d26391e34ad31d8c1fbffd688b358eb3463e50d"
  version "0.149.1"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
