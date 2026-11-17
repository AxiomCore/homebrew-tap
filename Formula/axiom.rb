class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/cli-v0.155.0/axiom-macos-arm64.tar.gz"
  sha256 "3f0008716915c7dce796414663e108279d4d26ecb8835eb96695bdddfc6ce48a"
  version "0.155.0"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
