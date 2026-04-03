class Acore < Formula
  desc "Acore evaluation engine for Axiom"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.78/acore-macos-arm64.tar.gz"
  sha256 "8d44170afc3eabcd8f0104c6958a5d2fb81477f13401651b2ba548e8bf09dbef"
  version "0.0.78"

  def install
    chmod 0755, "acore" 
    bin.install "acore"
  end

  test do
    assert_match "Pkl", shell_output("#{bin}/acore --version")
  end
end
