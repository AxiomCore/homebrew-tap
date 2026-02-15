class Acore < Formula
  desc "Acore evaluation engine for Axiom"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.21/acore-macos-arm64.tar.gz"
  sha256 "d82deaa6c72d81e2dd3619d1ecd3be884fff62477c76fa59d50eae3d4155e958"
  version "0.0.21"

  def install
    chmod 0755, "acore" 
    bin.install "acore"
  end

  test do
    assert_match "Pkl", shell_output("#{bin}/acore --version")
  end
end
