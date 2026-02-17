class Axiom < Formula
  desc "Axiom CLI"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.49/axiom-macos-arm64.tar.gz"
  sha256 "22ac9899eec98f32aef2273d3abf4d1f1b3908349da335d92bb7e09cb0e3dcc7"
  version "0.0.49"

  depends_on "acore"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
