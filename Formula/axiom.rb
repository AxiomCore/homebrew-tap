class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.140.0/axiom-macos-arm64.tar.gz"
  sha256 "20331ca06a380ecb6919b19112fb7309f72887710ebbac333ef568e7fef164d9"
  version "0.140.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
