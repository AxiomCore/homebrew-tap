class Axiom < Formula
  desc "Axiom CLI"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.67/axiom-macos-arm64.tar.gz"
  sha256 "525f3ee79e36129a35ddd456796770fd5246780a42e31a19b8ff7653f947ff2b"
  version "0.0.67"

  depends_on "acore"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
