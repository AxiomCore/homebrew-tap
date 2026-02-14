class Axiom < Formula
  desc "Axiom CLI"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.8/axiom-macos-arm64.tar.gz"
  sha256 "7f05bb34c7382b9558324da5f3f994f9f176a923dd209de928bb5223cbde2a51"
  version "0.0.8"

  depends_on "acore"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
