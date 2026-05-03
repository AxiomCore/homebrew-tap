class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.18.0/axiom-macos-arm64.tar.gz"
  sha256 "ea9b30a77307ba179d63854f584fd0aedadd9a5f75e6aee75c934f7f1b3858f0"
  version "0.18.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
