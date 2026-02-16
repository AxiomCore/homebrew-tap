class Acore < Formula
  desc "Acore evaluation engine for Axiom"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.36/acore-macos-arm64.tar.gz"
  sha256 "c2bd92811ba6e6e8a94aff5f8a5e2120d2d06468fcad30808ad88a40e29869f0"
  version "0.0.36"

  def install
    chmod 0755, "acore" 
    bin.install "acore"
  end

  test do
    assert_match "Pkl", shell_output("#{bin}/acore --version")
  end
end
