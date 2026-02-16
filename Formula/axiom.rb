class Axiom < Formula
  desc "Axiom CLI"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.43/axiom-macos-arm64.tar.gz"
  sha256 "dda0ab703fac8d8867622bab33112cf537ffcac8232fc5ee40f39b730f0d9673"
  version "0.0.43"

  depends_on "acore"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
