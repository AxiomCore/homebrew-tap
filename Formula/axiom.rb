class Axiom < Formula
  desc "Axiom CLI"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.74/axiom-macos-arm64.tar.gz"
  sha256 "f6d4aab82c3704e86f4ae50d97b11ef59b7e41d033ca845642901a575977c7cc"
  version "0.0.74"

  depends_on "acore"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
