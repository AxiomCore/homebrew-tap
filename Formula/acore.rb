class Acore < Formula
  desc "Acore evaluation engine for Axiom"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.5/acore-macos-arm64.tar.gz"
  sha256 "322a133b6dd1b389f6ae345db378668e8a45324009cc566f22493f609658ba0c"
  version "0.0.5"

  def install
    chmod 0755, "acore" 
    bin.install "acore"
  end

  test do
    assert_match "Pkl", shell_output("#{bin}/acore --version")
  end
end
