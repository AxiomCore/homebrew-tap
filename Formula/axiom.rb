class Axiom < Formula
  desc "Axiom CLI"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.69/axiom-macos-arm64.tar.gz"
  sha256 "216149824c4895ab8fc3e4fa899c3b15d08dce3842ba378470ed23155caee099"
  version "0.0.69"

  depends_on "acore"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
