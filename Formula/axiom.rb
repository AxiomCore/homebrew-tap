class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.70.0/axiom-macos-arm64.tar.gz"
  sha256 "d10c2d493c3d32d9a74b1311f5fe387305fe4907792fd7eeb569ca17e3cc4a32"
  version "0.70.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
