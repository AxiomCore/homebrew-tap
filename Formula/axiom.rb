class Axiom < Formula
  desc "Axiom CLI"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.73/axiom-macos-arm64.tar.gz"
  sha256 "f57517de33b5f4547e7d0612616d436201174c300f131689743975820307aa40"
  version "0.0.73"

  depends_on "acore"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
