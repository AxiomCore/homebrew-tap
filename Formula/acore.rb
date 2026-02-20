class Acore < Formula
  desc "Acore evaluation engine for Axiom"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.65/acore-macos-arm64.tar.gz"
  sha256 "46c7d9640137355dbba32d920530a0951cc27fd62aef86f978b286d6bd66fecf"
  version "0.0.65"

  def install
    chmod 0755, "acore" 
    bin.install "acore"
  end

  test do
    assert_match "Pkl", shell_output("#{bin}/acore --version")
  end
end
