class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.21.0/axiom-macos-arm64.tar.gz"
  sha256 "1ab0dc61bce3d838d7f7e098fc04e02ed7228ce001bf03d4c844259df009bbea"
  version "0.21.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
