class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.106.0/axiom-macos-arm64.tar.gz"
  sha256 "c39e19162f059d26544d8de33c395f67f63fdd10161e440056ab8a858e1e42ca"
  version "0.106.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
