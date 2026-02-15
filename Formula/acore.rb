class Acore < Formula
  desc "Acore evaluation engine for Axiom"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.16/acore-macos-arm64.tar.gz"
  sha256 "9026daf5f229236dec01b2b0f6448fc5547fa53dde0f0109715699de58b41f25"
  version "0.0.16"

  def install
    chmod 0755, "acore" 
    bin.install "acore"
  end

  test do
    assert_match "Pkl", shell_output("#{bin}/acore --version")
  end
end
