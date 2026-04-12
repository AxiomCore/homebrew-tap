class Axiom < Formula
  desc "Axiom CLI"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.81/axiom-macos-arm64.tar.gz"
  sha256 "fd08a279a8c17535c44f43c59d21e78895a8d62140ea7d015cdaf023747b96fc"
  version "0.0.81"

  depends_on "acore"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
