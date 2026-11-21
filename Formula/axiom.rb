class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/cli-v0.157.0/axiom-macos-arm64.tar.gz"
  sha256 "9176a742bf40f962ee2cbd6c1e7b3d161b7dc80944818eb67158a4f77581dbe5"
  version "0.157.0"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
