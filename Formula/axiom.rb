class Axiom < Formula
  desc "Axiom CLI"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.9/axiom-macos-arm64.tar.gz"
  sha256 "334e89e0eeb09c4921bdaf68a0e258081651f9d13d7c5ea7615064a780d8131c"
  version "0.0.9"

  depends_on "acore"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
