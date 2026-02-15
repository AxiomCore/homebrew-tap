class Acore < Formula
  desc "Acore evaluation engine for Axiom"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.17/acore-macos-arm64.tar.gz"
  sha256 "944f20b9508e39c9c55647e7bdcd94dbe036f73c1686e3225b28db84d09c3848"
  version "0.0.17"

  def install
    chmod 0755, "acore" 
    bin.install "acore"
  end

  test do
    assert_match "Pkl", shell_output("#{bin}/acore --version")
  end
end
