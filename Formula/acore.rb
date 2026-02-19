class Acore < Formula
  desc "Acore evaluation engine for Axiom"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.61/acore-macos-arm64.tar.gz"
  sha256 "782e69a4b23ffb1db97b4482548f6227bbd525108be610b81e3640900348d005"
  version "0.0.61"

  def install
    chmod 0755, "acore" 
    bin.install "acore"
  end

  test do
    assert_match "Pkl", shell_output("#{bin}/acore --version")
  end
end
