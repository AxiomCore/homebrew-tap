class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.109.0/axiom-macos-arm64.tar.gz"
  sha256 "4ad995e70a4d7bf8e52066c05f11a5a36463bd627465110b4381a79a67324e9b"
  version "0.109.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
