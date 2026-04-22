class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.1.93/axiom-macos-arm64.tar.gz"
  sha256 "2e3436a5aa06d601b3f2e5235fde9f46e16d9470c5dbadd1e7d07d63b149c389"
  version "v0.1.93"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
