class Axiom < Formula
  desc "Axiom CLI"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.58/axiom-macos-arm64.tar.gz"
  sha256 "a3380425c316a109d707ad077f1e0067ad2459b87111c1a65cb88ad65c7a58f0"
  version "0.0.58"

  depends_on "acore"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
