class Axiom < Formula
  desc "Axiom CLI"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.64/axiom-macos-arm64.tar.gz"
  sha256 "7d80b426f80aa98226e19e856f23fcc282eeaa2febe8a4c16e7d2c4d91d98679"
  version "0.0.64"

  depends_on "acore"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
