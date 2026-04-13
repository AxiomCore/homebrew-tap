class Acore < Formula
  desc "Acore evaluation engine for Axiom"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.82/acore-macos-arm64.tar.gz"
  sha256 "69fdb802709a37c51086da2d9ee3fc738b54e4957abe357d09e3b2ac3c424049"
  version "0.0.82"

  def install
    chmod 0755, "acore" 
    bin.install "acore"
  end

  test do
    assert_match "Pkl", shell_output("#{bin}/acore --version")
  end
end
