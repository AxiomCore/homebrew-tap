class Acore < Formula
  desc "Acore evaluation engine for Axiom"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.72/acore-macos-arm64.tar.gz"
  sha256 "4b85f51fd50f93287c5a44099bd8999ff48516df74fa28919af9add2a2756b70"
  version "0.0.72"

  def install
    chmod 0755, "acore" 
    bin.install "acore"
  end

  test do
    assert_match "Pkl", shell_output("#{bin}/acore --version")
  end
end
