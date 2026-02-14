class Acore < Formula
  desc "Acore evaluation engine for Axiom"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.13/acore-macos-arm64.tar.gz"
  sha256 "2dcb681ee7e226b5d9cccf0adf07581507f6870871f440c90238a63a7e99e192"
  version "0.0.13"

  def install
    chmod 0755, "acore" 
    bin.install "acore"
  end

  test do
    assert_match "Pkl", shell_output("#{bin}/acore --version")
  end
end
