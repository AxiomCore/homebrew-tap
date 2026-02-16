class Axiom < Formula
  desc "Axiom CLI"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.41/axiom-macos-arm64.tar.gz"
  sha256 "9dadd39b07594b3bcbbd66a09553bb5c2e4c41123297618c7e4f92fb8cae333e"
  version "0.0.41"

  depends_on "acore"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
