class Acore < Formula
  desc "Acore evaluation engine for Axiom"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.41/acore-macos-arm64.tar.gz"
  sha256 "27ead60c3323bb6ad10862c1e08e0bc6cfb1799c34b2e101cadc50d15b45437c"
  version "0.0.41"

  def install
    chmod 0755, "acore" 
    bin.install "acore"
  end

  test do
    assert_match "Pkl", shell_output("#{bin}/acore --version")
  end
end
