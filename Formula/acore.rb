class Acore < Formula
  desc "Acore evaluation engine for Axiom"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.49/acore-macos-arm64.tar.gz"
  sha256 "75637a95ceda16d7b18a03763caf5332f05fe09e1097bc3a36a3b4ad1563b02e"
  version "0.0.49"

  def install
    chmod 0755, "acore" 
    bin.install "acore"
  end

  test do
    assert_match "Pkl", shell_output("#{bin}/acore --version")
  end
end
