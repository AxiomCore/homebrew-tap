class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.1.99/axiom-macos-arm64.tar.gz"
  sha256 "58952921c480bbf8753dc3dcc43ed082fd227fc2dd9ffba438269cd185ea574e"
  version "0.1.99"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
