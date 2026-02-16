class Axiom < Formula
  desc "Axiom CLI"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.28/axiom-macos-arm64.tar.gz"
  sha256 "dc3f6cc91db07a2800baa3a90f0a4c508630a55302d8b40ed2e276e393e31905"
  version "0.0.28"

  depends_on "acore"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
