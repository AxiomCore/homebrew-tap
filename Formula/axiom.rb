class Axiom < Formula
  desc "Axiom CLI"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.77/axiom-macos-arm64.tar.gz"
  sha256 "8265bf68f9910db470a2602f8925fbca9653e4026a140997f949e27f440f6065"
  version "0.0.77"

  depends_on "acore"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
