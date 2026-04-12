class Acore < Formula
  desc "Acore evaluation engine for Axiom"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.81/acore-macos-arm64.tar.gz"
  sha256 "a15b081b4c7be284e2db17d636a4a6995ba4e07ed9594c1fd30df2e28e384c9f"
  version "0.0.81"

  def install
    chmod 0755, "acore" 
    bin.install "acore"
  end

  test do
    assert_match "Pkl", shell_output("#{bin}/acore --version")
  end
end
