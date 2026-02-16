class Axiom < Formula
  desc "Axiom CLI"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.40/axiom-macos-arm64.tar.gz"
  sha256 "047e867c8f1aa1c0ba7431788cd901824c9574e45f3fb8433b75252197a63d10"
  version "0.0.40"

  depends_on "acore"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
