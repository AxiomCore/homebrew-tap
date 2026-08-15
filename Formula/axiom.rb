class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.127.0/axiom-macos-arm64.tar.gz"
  sha256 "3bcb43491e0bee9ba9630725aa6b2a3c8aa6f4c80aab7432886fafd1d91d4702"
  version "0.127.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
