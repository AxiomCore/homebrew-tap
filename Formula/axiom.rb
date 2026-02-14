class Axiom < Formula
  desc "Axiom CLI"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.10/axiom-macos-arm64.tar.gz"
  sha256 "e9e8bac85a9fa424d9bf0c4945a697dd104271ce080ab7499411e23e5b289764"
  version "0.0.10"

  depends_on "acore"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
