class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.96.0/axiom-macos-arm64.tar.gz"
  sha256 "3da798fdaf2a32f6bce20548ef2b4f24afc2933c306f63ca4bffd94835dbb2bd"
  version "0.96.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
