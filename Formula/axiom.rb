class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.9.0/axiom-macos-arm64.tar.gz"
  sha256 "e5546bd4f76ca09fe3c38fd10546a0e2516fd6a20163a8942438e5f01926a607"
  version "0.9.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
