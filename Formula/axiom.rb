class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.128.0/axiom-macos-arm64.tar.gz"
  sha256 "d8cd3b29f8dc4913063d8833029581f006c1d49d7b7bb1ab4412913195f63dc5"
  version "0.128.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
