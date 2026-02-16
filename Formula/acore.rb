class Acore < Formula
  desc "Acore evaluation engine for Axiom"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.44/acore-macos-arm64.tar.gz"
  sha256 "5354d8d28bdc44b394087f5bb5bbdcded728079b96439bc5da5c438a740f6441"
  version "0.0.44"

  def install
    chmod 0755, "acore" 
    bin.install "acore"
  end

  test do
    assert_match "Pkl", shell_output("#{bin}/acore --version")
  end
end
