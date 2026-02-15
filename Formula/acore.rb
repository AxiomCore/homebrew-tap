class Acore < Formula
  desc "Acore evaluation engine for Axiom"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.19/acore-macos-arm64.tar.gz"
  sha256 "68f7ee2bb4a444cf75014bcfcb25e35adae8a9ed0227e63ba22a7b19c69138b2"
  version "0.0.19"

  def install
    chmod 0755, "acore" 
    bin.install "acore"
  end

  test do
    assert_match "Pkl", shell_output("#{bin}/acore --version")
  end
end
