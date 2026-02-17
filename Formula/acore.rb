class Acore < Formula
  desc "Acore evaluation engine for Axiom"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.52/acore-macos-arm64.tar.gz"
  sha256 "ed20daf6fceb9ebc690227242e83ca76d01bebdcf79a3d582ac4a985503dac53"
  version "0.0.52"

  def install
    chmod 0755, "acore" 
    bin.install "acore"
  end

  test do
    assert_match "Pkl", shell_output("#{bin}/acore --version")
  end
end
