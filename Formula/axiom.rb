class Axiom < Formula
  desc "Axiom CLI"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.11/axiom-macos-arm64.tar.gz"
  sha256 "dd7dd17587c8140b5e8d06c39c24f99234f89f5d838fb15907faef833eb92c44"
  version "0.0.11"

  depends_on "acore"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
