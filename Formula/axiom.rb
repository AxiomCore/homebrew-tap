class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.0.90/axiom-macos-arm64.tar.gz"
  sha256 "57b64b6699972813cb29471b31450596cc5075bf2dc35cdfdf6cc55e67222763"
  version "0.0.90"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
