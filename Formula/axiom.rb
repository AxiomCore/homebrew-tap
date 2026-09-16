class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.146.0/axiom-macos-arm64.tar.gz"
  sha256 "a567e9adaeb1fe1702701500863cfc4c2d189481bb2739f5943cf4fd280fcd96"
  version "0.146.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
