class Axiom < Formula
  desc "Axiom CLI"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.4/axiom-macos-arm64.tar.gz"
  sha256 "9620db743037410289bb2055c3cc2db732f36230a74a9b9f18b4bc2dd3ecc40a"
  version "0.0.4"

  depends_on "acore"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
