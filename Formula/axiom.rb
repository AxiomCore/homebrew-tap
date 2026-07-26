class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.117.0/axiom-macos-arm64.tar.gz"
  sha256 "7f14355aa302ce583b7a18ca7d570be29fe8468b51c92f8f326f272e31bde351"
  version "0.117.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
