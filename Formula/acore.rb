class Acore < Formula
  desc "Acore evaluation engine for Axiom"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.43/acore-macos-arm64.tar.gz"
  sha256 "95b3df87f3c021fe7bf914b5129d9139746134c24b9b5b6d49352307be3651c9"
  version "0.0.43"

  def install
    chmod 0755, "acore" 
    bin.install "acore"
  end

  test do
    assert_match "Pkl", shell_output("#{bin}/acore --version")
  end
end
