class Acore < Formula
  desc "Acore evaluation engine for Axiom"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.38/acore-macos-arm64.tar.gz"
  sha256 "49f4eeb5f8c4fd547fabdd9832d97333fb4b190a162ed9300faf0ff1423d2406"
  version "0.0.38"

  def install
    chmod 0755, "acore" 
    bin.install "acore"
  end

  test do
    assert_match "Pkl", shell_output("#{bin}/acore --version")
  end
end
