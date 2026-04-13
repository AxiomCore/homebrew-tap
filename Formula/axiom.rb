class Axiom < Formula
  desc "Axiom CLI"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.82/axiom-macos-arm64.tar.gz"
  sha256 "511690628c37d6dac9e8fd3b6069c7d813b9cd9f51183ff9378e6460b3f68a1d"
  version "0.0.82"

  depends_on "acore"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
