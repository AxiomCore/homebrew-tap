class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.139.0/axiom-macos-arm64.tar.gz"
  sha256 "656f5bfef05213163ca9b8693cb8bc682bc753e60e31f32d52faecb05e8de7ab"
  version "0.139.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
