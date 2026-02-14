class Acore < Formula
  desc "Acore evaluation engine for Axiom"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.14/acore-macos-arm64.tar.gz"
  sha256 "7c04c9c901f967b778542ab3425212ab045ce8d681a6bbb971963c7530519670"
  version "0.0.14"

  def install
    chmod 0755, "acore" 
    bin.install "acore"
  end

  test do
    assert_match "Pkl", shell_output("#{bin}/acore --version")
  end
end
