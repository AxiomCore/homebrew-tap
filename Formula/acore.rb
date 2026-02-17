class Acore < Formula
  desc "Acore evaluation engine for Axiom"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.55/acore-macos-arm64.tar.gz"
  sha256 "73aa3116b28492514a4e15cc4632e858291532eaad318f99ca95caa5cc99dffd"
  version "0.0.55"

  def install
    chmod 0755, "acore" 
    bin.install "acore"
  end

  test do
    assert_match "Pkl", shell_output("#{bin}/acore --version")
  end
end
