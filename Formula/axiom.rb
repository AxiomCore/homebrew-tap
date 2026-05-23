class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.97.0/axiom-macos-arm64.tar.gz"
  sha256 "e35cd5f3cdbae63deb83d7a7797f93e90a4a2697e938b4d69d2edb343700cdd2"
  version "0.97.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
