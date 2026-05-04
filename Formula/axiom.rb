class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.46.0/axiom-macos-arm64.tar.gz"
  sha256 "7718a5b55c757bff468032a779c028c219c50c1464658225adacf80e7754ce7e"
  version "0.46.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
