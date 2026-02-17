class Acore < Formula
  desc "Acore evaluation engine for Axiom"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.51/acore-macos-arm64.tar.gz"
  sha256 "281468ba12d9fff3d80565da99fc4fea42ceebcb8314681f69d56a1c8fe56f22"
  version "0.0.51"

  def install
    chmod 0755, "acore" 
    bin.install "acore"
  end

  test do
    assert_match "Pkl", shell_output("#{bin}/acore --version")
  end
end
