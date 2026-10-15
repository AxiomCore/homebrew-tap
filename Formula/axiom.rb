class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/cli-v0.149.0/axiom-macos-arm64.tar.gz"
  sha256 "229cf5b0e6d3ff2b1dfbe7ed8138a4864eba7ddd622d9a7e97f70a1d8578a8c6"
  version "0.149.0"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
