class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.131.0/axiom-macos-arm64.tar.gz"
  sha256 "28c9edf68827d270016d16b3d24265c3bec64d328e2f1850dc4b9749142a56e1"
  version "0.131.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
