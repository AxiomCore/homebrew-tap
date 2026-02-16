class Axiom < Formula
  desc "Axiom CLI"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.39/axiom-macos-arm64.tar.gz"
  sha256 "5406a7bcb5ea25a98143b1f84d3aace62d36e5cb90625b48084481efaf5dd0fc"
  version "0.0.39"

  depends_on "acore"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
