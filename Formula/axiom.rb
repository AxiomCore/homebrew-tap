class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.73.0/axiom-macos-arm64.tar.gz"
  sha256 "52817e14166a0204f06b39d99ff64ad31916a3e318266e15cc275e8cdd71eb47"
  version "0.73.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
