class Acore < Formula
  desc "Acore evaluation engine for Axiom"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.15/acore-macos-arm64.tar.gz"
  sha256 "2b98bf9aa79458fdccb888716747fbf1aa94549cc672e5308cd6145fe7b4958f"
  version "0.0.15"

  def install
    chmod 0755, "acore" 
    bin.install "acore"
  end

  test do
    assert_match "Pkl", shell_output("#{bin}/acore --version")
  end
end
