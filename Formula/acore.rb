class Acore < Formula
  desc "Acore evaluation engine for Axiom"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.64/acore-macos-arm64.tar.gz"
  sha256 "1600aa0de2ccddc9884f336b16dcc4f43c22276f3ebc4caa0208560e117b0dc4"
  version "0.0.64"

  def install
    chmod 0755, "acore" 
    bin.install "acore"
  end

  test do
    assert_match "Pkl", shell_output("#{bin}/acore --version")
  end
end
