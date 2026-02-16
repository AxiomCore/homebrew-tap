class Acore < Formula
  desc "Acore evaluation engine for Axiom"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.37/acore-macos-arm64.tar.gz"
  sha256 "ff9dfd267e92c8eb0c930f0854193660f02fa13a65931ec72bbc7b04363acdf1"
  version "0.0.37"

  def install
    chmod 0755, "acore" 
    bin.install "acore"
  end

  test do
    assert_match "Pkl", shell_output("#{bin}/acore --version")
  end
end
