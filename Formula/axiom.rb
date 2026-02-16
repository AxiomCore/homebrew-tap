class Axiom < Formula
  desc "Axiom CLI"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.32/axiom-macos-arm64.tar.gz"
  sha256 "7846f32d14f4da4e904b7a4e23d81245a42a96d985a7fb0454bfc13c107a5516"
  version "0.0.32"

  depends_on "acore"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
