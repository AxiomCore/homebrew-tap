class Axiom < Formula
  desc "Axiom CLI"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.42/axiom-macos-arm64.tar.gz"
  sha256 "a82e374bd34eacc3375a436cdddf158123ec65fd51c06fc4398230373b293446"
  version "0.0.42"

  depends_on "acore"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
