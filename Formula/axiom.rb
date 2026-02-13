class Axiom < Formula
  desc "Axiom CLI"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.1/axiom-macos-arm64.tar.gz"
  sha256 "5acc198fe3cc8eaafd290f1f6a9a05cb71c4071ee1a97a78e7a0f29c376f4b9e"
  version "0.0.1"

  depends_on "acore"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
