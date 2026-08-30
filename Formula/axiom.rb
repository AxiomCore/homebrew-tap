class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.142.0/axiom-macos-arm64.tar.gz"
  sha256 "face93483e34980f67aceb93dcc2356b67236c7f9ab58f71163fcba53bd9a867"
  version "0.142.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
