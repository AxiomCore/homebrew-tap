class Axiom < Formula
  desc "Axiom CLI"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.79/axiom-macos-arm64.tar.gz"
  sha256 "ebcea947af9a6ec68752791f75b3f4fe975f66b9693eb1f78fb0fe0f41d275cf"
  version "0.0.79"

  depends_on "acore"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
