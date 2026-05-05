class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.62.0/axiom-macos-arm64.tar.gz"
  sha256 "8c0db512ae65d84e138dc6fe8aeffc086a22b8d41bd52944fd57fe458f23201f"
  version "0.62.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
