class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.0.89/axiom-macos-arm64.tar.gz"
  sha256 "dd5d3f6e561c129f0d49ef34dc6f396b984dfa19348dba79b9beb6924e18309c"
  version "0.0.89"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
