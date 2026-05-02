class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.17.0/axiom-macos-arm64.tar.gz"
  sha256 "949237bdf03dfed9f61e7f81c7953b4a78a0bd1f4c7dd151c25f294c396374e5"
  version "0.17.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
