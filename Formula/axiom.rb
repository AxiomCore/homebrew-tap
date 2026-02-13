class Axiom < Formula
  desc "Axiom CLI"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.3/axiom-macos-arm64.tar.gz"
  sha256 "d11e43db58bb4a3d760f730d7357caf3792d71858e6a86d7e06a7932319f08c6"
  version "0.0.3"

  depends_on "acore"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
