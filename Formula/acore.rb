class Acore < Formula
  desc "Acore evaluation engine for Axiom"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.66/acore-macos-arm64.tar.gz"
  sha256 "2999160f309ad7f8cd0eafd59139327a7d6ecee48e0809e85ece6bc92ff17976"
  version "0.0.66"

  def install
    chmod 0755, "acore" 
    bin.install "acore"
  end

  test do
    assert_match "Pkl", shell_output("#{bin}/acore --version")
  end
end
