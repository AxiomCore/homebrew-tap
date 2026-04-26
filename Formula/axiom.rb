class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.1.98/axiom-macos-arm64.tar.gz"
  sha256 "ea7de63b7f8e34e94a275cb144793cde267b471c113aaa3749dc3ddd2d129213"
  version "0.1.98"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
