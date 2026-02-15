class Axiom < Formula
  desc "Axiom CLI"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.23/axiom-macos-arm64.tar.gz"
  sha256 "baef1c7959d367a3b435ba90e7687a6ec564e352ffe1b79346de22b0de0dfa7d"
  version "0.0.23"

  depends_on "acore"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
