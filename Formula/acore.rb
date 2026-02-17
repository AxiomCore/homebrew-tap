class Acore < Formula
  desc "Acore evaluation engine for Axiom"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.45/acore-macos-arm64.tar.gz"
  sha256 "ae2f937aecc9c2ef9bf97ba13a7b22878d3e6581fbfc0e3531f7d338eda00e71"
  version "0.0.45"

  def install
    chmod 0755, "acore" 
    bin.install "acore"
  end

  test do
    assert_match "Pkl", shell_output("#{bin}/acore --version")
  end
end
