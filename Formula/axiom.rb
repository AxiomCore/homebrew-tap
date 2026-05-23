class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.91.0/axiom-macos-arm64.tar.gz"
  sha256 "29280bc79490a925768e3448d8ef3d40b2f547259204f6a6a567534f0d1e73f5"
  version "0.91.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
