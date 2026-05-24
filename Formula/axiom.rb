class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.102.0/axiom-macos-arm64.tar.gz"
  sha256 "353e6cf52e21b9467b3ff322ddd963efff34869a00bc421f4bd56c8f78239ca9"
  version "0.102.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
