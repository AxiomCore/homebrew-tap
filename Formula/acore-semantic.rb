class AcoreSemantic < Formula
  desc "Semantic reads and checked edits of Acore projects for coding agents"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/acore-semantic-v0.1.4/acore-semantic-macos-arm64.tar.gz"
  sha256 "a0bc1b276168558482145593a4f398645e0c6c5764d6545dd52dd71bdd94cfe2"
  version "0.1.4"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "acore-semantic"
  end

  test do
    assert_match "acore-semantic@#{version}", shell_output("#{bin}/acore-semantic --version")
    assert_match "axiom-agent-semantic/v1", shell_output("#{bin}/acore-semantic --capabilities")
  end
end
