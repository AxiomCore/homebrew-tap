class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.64.0/axiom-macos-arm64.tar.gz"
  sha256 "36b0086a2203e2d6271288168d6cfd86e42b42657414fcba9b046299179cf9d2"
  version "0.64.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
