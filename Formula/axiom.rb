class Axiom < Formula
  desc "Axiom CLI"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.1.0/axiom-macos-arm64.tar.gz"
  sha256 "c3cd186527cda01ec8ad95b28d1dba94a843c491053e1d0c175b4927c9a5cf94"
  version "0.1.0"

  depends_on "acore"

  def install
    bin.install "axiom"
  end
end
