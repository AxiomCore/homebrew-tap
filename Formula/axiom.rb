class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.1.103/axiom-macos-arm64.tar.gz"
  sha256 "11a6b52d17c7eb708d90028fee22ff98328c2a905cf36e051931e16945cffb2d"
  version "0.1.103"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
