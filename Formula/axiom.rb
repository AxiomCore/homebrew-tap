class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.116.0/axiom-macos-arm64.tar.gz"
  sha256 "9603436314b8ff86b8abc134c37b55247029a092e3ed589f6ac05b23857929db"
  version "0.116.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
