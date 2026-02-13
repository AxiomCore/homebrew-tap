class Acore < Formula
  desc "Acore evaluation engine for Axiom"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.2/acore-macos-arm64.tar.gz"
  sha256 "036a09993300f0a795d6ef7ecb690ff093cfb92978266fb4ab5644e4bbe272b6"
  version "0.0.2"

  def install
    bin.install "acore"
  end

  test do
    assert_match "Pkl", shell_output("#{bin}/acore --version")
  end
end
