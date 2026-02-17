class Acore < Formula
  desc "Acore evaluation engine for Axiom"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.50/acore-macos-arm64.tar.gz"
  sha256 "6a9f16e0373ae6b946ee31e770601cbee37515f19b36b0eadd91f4a30ef3292d"
  version "0.0.50"

  def install
    chmod 0755, "acore" 
    bin.install "acore"
  end

  test do
    assert_match "Pkl", shell_output("#{bin}/acore --version")
  end
end
