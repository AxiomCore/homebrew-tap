class Acore < Formula
  desc "Acore evaluation engine for Axiom"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.27/acore-macos-arm64.tar.gz"
  sha256 "e9203bfb492f8d571531ad718a8e74849579e7ff60adcade02c853baddaee575"
  version "0.0.27"

  def install
    chmod 0755, "acore" 
    bin.install "acore"
  end

  test do
    assert_match "Pkl", shell_output("#{bin}/acore --version")
  end
end
