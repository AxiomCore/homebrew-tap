class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.20.0/axiom-macos-arm64.tar.gz"
  sha256 "8585b57480ad699c0e0f85d4855467d07bb540e92c02220e25376c8a7da048c8"
  version "0.20.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
