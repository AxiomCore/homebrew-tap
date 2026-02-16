class Acore < Formula
  desc "Acore evaluation engine for Axiom"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.33/acore-macos-arm64.tar.gz"
  sha256 "a0e0a0367b6d7882b32a34e78da0689ed4c79f310b7ab307570236626375223a"
  version "0.0.33"

  def install
    chmod 0755, "acore" 
    bin.install "acore"
  end

  test do
    assert_match "Pkl", shell_output("#{bin}/acore --version")
  end
end
