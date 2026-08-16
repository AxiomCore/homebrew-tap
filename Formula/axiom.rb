class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.130.0/axiom-macos-arm64.tar.gz"
  sha256 "4e93eb7d7544e5c0d30cd708273c3c01c56d34ff7f36e6902301615a37ad2848"
  version "0.130.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
