class Acore < Formula
  desc "Acore evaluation engine for Axiom"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.25/acore-macos-arm64.tar.gz"
  sha256 "16af59847265b9859b6494edde1b4f584819c712e5059af0377938445de03206"
  version "0.0.25"

  def install
    chmod 0755, "acore" 
    bin.install "acore"
  end

  test do
    assert_match "Pkl", shell_output("#{bin}/acore --version")
  end
end
