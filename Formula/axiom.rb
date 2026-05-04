class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.43.0/axiom-macos-arm64.tar.gz"
  sha256 "f22b73f365f523dba8d06696f3d7433c6d0c415997d158f859fe34eca86c7d9e"
  version "0.43.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
