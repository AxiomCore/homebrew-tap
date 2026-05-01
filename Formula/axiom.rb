class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.3.0/axiom-macos-arm64.tar.gz"
  sha256 "8ad48b5560a596bea1ab11ed66e6909fc1586c784b80bde77ad3bc7e442fe91d"
  version "0.3.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
