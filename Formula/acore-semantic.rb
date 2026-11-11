class AcoreSemantic < Formula
  desc "Semantic reads and checked edits of Acore projects for coding agents"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/acore-semantic-v0.1.4/acore-semantic-macos-arm64.tar.gz"
  sha256 "7569ac419681042c39982a0789ec2d3f6119073a5fe7fc3c8d691a1f2e641363"
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
