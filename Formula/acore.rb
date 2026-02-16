class Acore < Formula
  desc "Acore evaluation engine for Axiom"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.32/acore-macos-arm64.tar.gz"
  sha256 "4c70b96b94a6d2282e2a049ec947cec1ce23cca0b7fc398dc416c8c0c9caf692"
  version "0.0.32"

  def install
    chmod 0755, "acore" 
    bin.install "acore"
  end

  test do
    assert_match "Pkl", shell_output("#{bin}/acore --version")
  end
end
