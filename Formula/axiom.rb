class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.1.104/axiom-macos-arm64.tar.gz"
  sha256 "ac7edd7b49fcd8c0e5410df0b7caaa85da4d9d6fe9cd394d14ddf0acdc07ebfa"
  version "0.1.104"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
