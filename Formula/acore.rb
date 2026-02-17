class Acore < Formula
  desc "Acore evaluation engine for Axiom"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.53/acore-macos-arm64.tar.gz"
  sha256 "62e6285933886cb37d31284465941b39dbf38cbd011e2354b350d4b0838cbff9"
  version "0.0.53"

  def install
    chmod 0755, "acore" 
    bin.install "acore"
  end

  test do
    assert_match "Pkl", shell_output("#{bin}/acore --version")
  end
end
