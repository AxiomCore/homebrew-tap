class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.103.0/axiom-macos-arm64.tar.gz"
  sha256 "9d4ef61f397a5d0fc7234d19cae03192578653bc4d08f7c275534c91490aa945"
  version "0.103.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
