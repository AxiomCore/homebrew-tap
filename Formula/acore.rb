class Acore < Formula
  desc "Acore evaluation engine for Axiom"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.9/acore-macos-arm64.tar.gz"
  sha256 "fe9091c043a390047b13cb71c503f1d46a9c1b4ba92b1eb60f3d0ff23823a431"
  version "0.0.9"

  def install
    chmod 0755, "acore" 
    bin.install "acore"
  end

  test do
    assert_match "Pkl", shell_output("#{bin}/acore --version")
  end
end
