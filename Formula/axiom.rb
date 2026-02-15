class Axiom < Formula
  desc "Axiom CLI"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.19/axiom-macos-arm64.tar.gz"
  sha256 "fa95f8311542a66fc515adc5aa682a74a82266a3647cc9d09d8e04fd75fa3c92"
  version "0.0.19"

  depends_on "acore"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
