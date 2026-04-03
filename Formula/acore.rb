class Acore < Formula
  desc "Acore evaluation engine for Axiom"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.79/acore-macos-arm64.tar.gz"
  sha256 "ca39b8c1ceeafbe9d70ca69d4bfe0e8166ac26b35db3170226db1978c9238098"
  version "0.0.79"

  def install
    chmod 0755, "acore" 
    bin.install "acore"
  end

  test do
    assert_match "Pkl", shell_output("#{bin}/acore --version")
  end
end
