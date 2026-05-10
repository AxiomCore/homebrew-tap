class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.81.0/axiom-macos-arm64.tar.gz"
  sha256 "070af345f3930b670bbde22bf958d7f1c69e70ba94cda2930c17cfd645c09f4d"
  version "0.81.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
