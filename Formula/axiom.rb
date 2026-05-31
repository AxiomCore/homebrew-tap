class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.104.0/axiom-macos-arm64.tar.gz"
  sha256 "609f9f0d38465bc8f4da943291232832dda0735c9e3c407d4b79453840cf595f"
  version "0.104.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
