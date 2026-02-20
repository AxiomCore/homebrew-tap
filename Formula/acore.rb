class Acore < Formula
  desc "Acore evaluation engine for Axiom"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.67/acore-macos-arm64.tar.gz"
  sha256 "9210abb46fb0c6b31c3c8aa1ee625658abc7a6d15a7b7ef2b43aac1d848ef71e"
  version "0.0.67"

  def install
    chmod 0755, "acore" 
    bin.install "acore"
  end

  test do
    assert_match "Pkl", shell_output("#{bin}/acore --version")
  end
end
