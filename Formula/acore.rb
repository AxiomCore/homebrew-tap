class Acore < Formula
  desc "Acore evaluation engine for Axiom"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.11/acore-macos-arm64.tar.gz"
  sha256 "bf677ca4cba0db9155ad7753673a77a8d060189c7654f9eb6cc36b4cce02c5c9"
  version "0.0.11"

  def install
    chmod 0755, "acore" 
    bin.install "acore"
  end

  test do
    assert_match "Pkl", shell_output("#{bin}/acore --version")
  end
end
