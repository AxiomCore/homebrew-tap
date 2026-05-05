class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.66.0/axiom-macos-arm64.tar.gz"
  sha256 "68fe218e7ca48b22375692ce9ad7238eb25e3eec78ab6dc5cb7444a3665b5293"
  version "0.66.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
