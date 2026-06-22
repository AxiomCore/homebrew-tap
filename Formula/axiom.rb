class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.112.0/axiom-macos-arm64.tar.gz"
  sha256 "3b487ff3971a031bf0df1081d6ff463dac640f014a30e25bd65b85bac93f33b6"
  version "0.112.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
