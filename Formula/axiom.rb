class Axiom < Formula
  desc "Axiom CLI"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.15/axiom-macos-arm64.tar.gz"
  sha256 "2298eb5c47fa94bf090cb3880b1efab347fcc290e8a2ee68fbe3ccfceb82a39d"
  version "0.0.15"

  depends_on "acore"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
