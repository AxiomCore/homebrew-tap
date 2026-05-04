class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.50.0/axiom-macos-arm64.tar.gz"
  sha256 "77d52131b7ecda7dd41a85bab369a502da8c8a6d15f998f7e9836de3af786425"
  version "0.50.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
