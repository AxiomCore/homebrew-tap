class Acore < Formula
  desc "Acore evaluation engine for Axiom"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.22/acore-macos-arm64.tar.gz"
  sha256 "7503ec57f6940f4b3c0775d4b8afc9f7d62e2a972530785b81220cd23956f763"
  version "0.0.22"

  def install
    chmod 0755, "acore" 
    bin.install "acore"
  end

  test do
    assert_match "Pkl", shell_output("#{bin}/acore --version")
  end
end
