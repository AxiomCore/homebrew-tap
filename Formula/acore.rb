class Acore < Formula
  desc "Acore evaluation engine for Axiom"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.8/acore-macos-arm64.tar.gz"
  sha256 "7ca3892f821d420a2dd8735fa5b50e9a436073aa910e9b6e8ee3187867ee8efa"
  version "0.0.8"

  def install
    chmod 0755, "acore" 
    bin.install "acore"
  end

  test do
    assert_match "Pkl", shell_output("#{bin}/acore --version")
  end
end
