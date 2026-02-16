class Axiom < Formula
  desc "Axiom CLI"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.29/axiom-macos-arm64.tar.gz"
  sha256 "ab2477185cb67b080c091e3ef86f6fdc002f04f50fcb752353b7053f2474425b"
  version "0.0.29"

  depends_on "acore"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
