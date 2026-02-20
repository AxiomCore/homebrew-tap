class Acore < Formula
  desc "Acore evaluation engine for Axiom"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.62/acore-macos-arm64.tar.gz"
  sha256 "fd989975be2e85d3efbea1170ca3e46aba67cfeadc138fe9d48cdff45fb7e903"
  version "0.0.62"

  def install
    chmod 0755, "acore" 
    bin.install "acore"
  end

  test do
    assert_match "Pkl", shell_output("#{bin}/acore --version")
  end
end
