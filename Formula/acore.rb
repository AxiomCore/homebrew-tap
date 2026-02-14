class Acore < Formula
  desc "Acore evaluation engine for Axiom"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.10/acore-macos-arm64.tar.gz"
  sha256 "1df51d1ab817532780bd93a6b6f416b2140fd834b6b3299174178f300c7afa56"
  version "0.0.10"

  def install
    chmod 0755, "acore" 
    bin.install "acore"
  end

  test do
    assert_match "Pkl", shell_output("#{bin}/acore --version")
  end
end
