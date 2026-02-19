class Acore < Formula
  desc "Acore evaluation engine for Axiom"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.60/acore-macos-arm64.tar.gz"
  sha256 "c05bfb9469af970847df5c3433e6457642e34f2a00876cf6f187eb3e499d7e0c"
  version "0.0.60"

  def install
    chmod 0755, "acore" 
    bin.install "acore"
  end

  test do
    assert_match "Pkl", shell_output("#{bin}/acore --version")
  end
end
