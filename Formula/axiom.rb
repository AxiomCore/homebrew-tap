class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.94.0/axiom-macos-arm64.tar.gz"
  sha256 "54392274eb2c7859e64db9f6e67f79c3ffbca3404a6c271dac22634be100c272"
  version "0.94.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
