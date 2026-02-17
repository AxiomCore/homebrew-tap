class Acore < Formula
  desc "Acore evaluation engine for Axiom"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.58/acore-macos-arm64.tar.gz"
  sha256 "b7179c28d388d34d88641aa79c6396226119ebb81737a8f1e0641912075be5d7"
  version "0.0.58"

  def install
    chmod 0755, "acore" 
    bin.install "acore"
  end

  test do
    assert_match "Pkl", shell_output("#{bin}/acore --version")
  end
end
