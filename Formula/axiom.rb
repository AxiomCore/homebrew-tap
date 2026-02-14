class Axiom < Formula
  desc "Axiom CLI"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.13/axiom-macos-arm64.tar.gz"
  sha256 "ec542759d00b2e2ab02d46f071aa7d0d4c4efe9d0588fb1b4e12d6f55cad758d"
  version "0.0.13"

  depends_on "acore"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
