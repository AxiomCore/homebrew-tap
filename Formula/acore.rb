class Acore < Formula
  desc "Acore evaluation engine for Axiom"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.77/acore-macos-arm64.tar.gz"
  sha256 "9a83bbf6eea068a52e0c52f5daf6da8dbf6a966c953e641e8cfc475b94dfd247"
  version "0.0.77"

  def install
    chmod 0755, "acore" 
    bin.install "acore"
  end

  test do
    assert_match "Pkl", shell_output("#{bin}/acore --version")
  end
end
