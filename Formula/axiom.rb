class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.16.0/axiom-macos-arm64.tar.gz"
  sha256 "2192f2325baf8ac933d10e5cf5a559d435e45f11ec78e771859fbfb193bdd305"
  version "0.16.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
