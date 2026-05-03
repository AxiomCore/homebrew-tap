class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.27.0/axiom-macos-arm64.tar.gz"
  sha256 "547c7894b580426a0daacbe768327c76fc02fb3e6f4e09049c0e32af5f31f66d"
  version "0.27.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
