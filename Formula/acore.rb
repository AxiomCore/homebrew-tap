class Acore < Formula
  desc "Acore evaluation engine for Axiom"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.80/acore-macos-arm64.tar.gz"
  sha256 "8cb7fe7ee188d5ec99218d50e18359199c4ed720f37b5df0386792c5d33ed0b6"
  version "0.0.80"

  def install
    chmod 0755, "acore" 
    bin.install "acore"
  end

  test do
    assert_match "Pkl", shell_output("#{bin}/acore --version")
  end
end
