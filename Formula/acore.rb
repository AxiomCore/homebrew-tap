class Acore < Formula
  desc "Acore evaluation engine for Axiom"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.6/acore-macos-arm64.tar.gz"
  sha256 "12bc17b5706b8459b0ce6dba580a36852470ea4df09e17590dd17727834dde84"
  version "0.0.6"

  def install
    chmod 0755, "acore" 
    bin.install "acore"
  end

  test do
    assert_match "Pkl", shell_output("#{bin}/acore --version")
  end
end
