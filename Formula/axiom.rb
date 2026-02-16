class Axiom < Formula
  desc "Axiom CLI"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.27/axiom-macos-arm64.tar.gz"
  sha256 "0f89a31a814e7b36a2fe003bba0891d4af01adeba9cb9116e7a18d58ab180a3d"
  version "0.0.27"

  depends_on "acore"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
