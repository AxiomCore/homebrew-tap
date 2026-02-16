class Acore < Formula
  desc "Acore evaluation engine for Axiom"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.30/acore-macos-arm64.tar.gz"
  sha256 "477bc73f8878bf2b6e718d4bd0656dbf44f0fae783c07bf4e43c6e802e723258"
  version "0.0.30"

  def install
    chmod 0755, "acore" 
    bin.install "acore"
  end

  test do
    assert_match "Pkl", shell_output("#{bin}/acore --version")
  end
end
