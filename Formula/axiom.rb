class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.93.0/axiom-macos-arm64.tar.gz"
  sha256 "322e9a56d1c06489e3c4ecb965bb3baa7514fdbcd26eaf8d2932547062807859"
  version "0.93.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
