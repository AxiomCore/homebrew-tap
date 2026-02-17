class Acore < Formula
  desc "Acore evaluation engine for Axiom"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.59/acore-macos-arm64.tar.gz"
  sha256 "20339cbb2ab4461a8ca6ed458475f8f6dd8eba6b3b79c0c0358d38c2f0069811"
  version "0.0.59"

  def install
    chmod 0755, "acore" 
    bin.install "acore"
  end

  test do
    assert_match "Pkl", shell_output("#{bin}/acore --version")
  end
end
