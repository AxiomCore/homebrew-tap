class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.77.0/axiom-macos-arm64.tar.gz"
  sha256 "2e40f84ee797ce5c11afb7d50f054fc6c8a8efb2d61e6e1ba18ea451e469ffab"
  version "0.77.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
