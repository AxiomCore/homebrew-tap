class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.1.93/axiom-macos-arm64.tar.gz"
  sha256 "bb2c2b9cfa4469b460f52e06550505f0c5d41efa2a7853728cd3ff999f89b10f"
  version "0.1.93"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
