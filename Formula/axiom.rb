class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.32.0/axiom-macos-arm64.tar.gz"
  sha256 "667cd784f8ce024420a9bd790d8f30deb49ceb847934681236a0382bb66b7010"
  version "0.32.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
