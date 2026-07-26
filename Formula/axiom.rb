class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.119.0/axiom-macos-arm64.tar.gz"
  sha256 "cb38157fb35566ae8a0829307feaa62328b543b73a6d964b410f84c8a1e45583"
  version "0.119.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
