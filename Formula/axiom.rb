class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.61.0/axiom-macos-arm64.tar.gz"
  sha256 "7146b984488b532c3f51ff19c099411c395ed92eadd37f8f147e8f3a382e5c7b"
  version "0.61.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
