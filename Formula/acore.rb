class Acore < Formula
  desc "Acore evaluation engine for Axiom"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.69/acore-macos-arm64.tar.gz"
  sha256 "570cba851544d3c04c614abeacf4234471c99fe6ca6f4b8e91b5efb4cb3b2346"
  version "0.0.69"

  def install
    chmod 0755, "acore" 
    bin.install "acore"
  end

  test do
    assert_match "Pkl", shell_output("#{bin}/acore --version")
  end
end
