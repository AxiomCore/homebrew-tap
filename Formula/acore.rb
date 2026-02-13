class Acore < Formula
  desc "Acore evaluation engine for Axiom"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.2/acore-macos-arm64.tar.gz"
  sha256 "de99122732308ae221e1a7f39ae8b2be50550fbfded30415c0ff985aee414440"
  version "0.0.2"

  def install
    bin.install "acore"
  end

  test do
    assert_match "Pkl", shell_output("#{bin}/acore --version")
  end
end
