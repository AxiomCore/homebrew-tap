class Acore < Formula
  desc "Acore evaluation engine for Axiom"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.29/acore-macos-arm64.tar.gz"
  sha256 "83ebe9e019724ff865bc9d20d746422fec2ddbba9178df58cbfe98499fe4c176"
  version "0.0.29"

  def install
    chmod 0755, "acore" 
    bin.install "acore"
  end

  test do
    assert_match "Pkl", shell_output("#{bin}/acore --version")
  end
end
