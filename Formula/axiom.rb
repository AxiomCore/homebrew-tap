class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.147.3/axiom-macos-arm64.tar.gz"
  sha256 "0f1736fed5ad7ada4ddd2b2cb6b99bac210bcc29218d1bb4cfbdb0bf3908c9a0"
  version "0.147.3"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
