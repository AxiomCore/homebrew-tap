class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.1.94/axiom-macos-arm64.tar.gz"
  sha256 "6e5352f8b78140b608c8751c4d11ccac2bba68c9f1a4896ba8a0ef8cc3704c45"
  version "0.1.94"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
