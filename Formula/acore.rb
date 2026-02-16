class Acore < Formula
  desc "Acore evaluation engine for Axiom"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.34/acore-macos-arm64.tar.gz"
  sha256 "be82f3f7c057b4f2af2d088b09b1ee373647bd49d6b2992774920f7fd3b68742"
  version "0.0.34"

  def install
    chmod 0755, "acore" 
    bin.install "acore"
  end

  test do
    assert_match "Pkl", shell_output("#{bin}/acore --version")
  end
end
