class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.24.0/axiom-macos-arm64.tar.gz"
  sha256 "118d0abf5d059375b46d2156fd8e70164f5726127515dfd3b3c261162625265d"
  version "0.24.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
