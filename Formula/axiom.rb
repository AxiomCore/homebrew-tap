class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.72.0/axiom-macos-arm64.tar.gz"
  sha256 "2e6be8d641eb8a1355b5c54b551cb06160dd5e7b56e4778e909b561e90783887"
  version "0.72.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
