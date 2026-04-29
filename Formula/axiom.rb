class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.1.107/axiom-macos-arm64.tar.gz"
  sha256 "2c4613737941726028aefab5026472e2c68cbd7b8de07525a00a08c401b10fcb"
  version "0.1.107"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
