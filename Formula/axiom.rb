class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.0.86/axiom-macos-arm64.tar.gz"
  sha256 "ad8d7e29bbc15acda45a1214438367a5f0defd9c3b94762ec64294c2d320585d"
  version "0.0.86"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
