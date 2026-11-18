class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/cli-v0.156.0/axiom-macos-arm64.tar.gz"
  sha256 "cb6fce0b837d6495c157db862492e750ba3780dbf0738b36b0d95c8c8fe8b171"
  version "0.156.0"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
