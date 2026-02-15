class Acore < Formula
  desc "Acore evaluation engine for Axiom"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.20/acore-macos-arm64.tar.gz"
  sha256 "b89c076e07f9497ceaba0e379f888c64f9eb07e3bf2d08ec6fd33a92b778e74c"
  version "0.0.20"

  def install
    chmod 0755, "acore" 
    bin.install "acore"
  end

  test do
    assert_match "Pkl", shell_output("#{bin}/acore --version")
  end
end
