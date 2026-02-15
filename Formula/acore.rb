class Acore < Formula
  desc "Acore evaluation engine for Axiom"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.18/acore-macos-arm64.tar.gz"
  sha256 "4d9abc10240c878f298c1d4f67fc39745cff4976bfaa9464a83b7bdaa9b0e3c2"
  version "0.0.18"

  def install
    chmod 0755, "acore" 
    bin.install "acore"
  end

  test do
    assert_match "Pkl", shell_output("#{bin}/acore --version")
  end
end
