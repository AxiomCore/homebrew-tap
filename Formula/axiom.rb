class Axiom < Formula
  desc "Axiom CLI"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.14/axiom-macos-arm64.tar.gz"
  sha256 "7798ab1f46e997cfe6793aab675951cfa28f343190bcddc5d773f7c8161ee12b"
  version "0.0.14"

  depends_on "acore"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
