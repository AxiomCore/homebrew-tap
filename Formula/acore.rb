class Acore < Formula
  desc "Acore evaluation engine for Axiom"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.74/acore-macos-arm64.tar.gz"
  sha256 "eb1bca36de3019c280f0da17dc4837a30e8a0fac4312a909d7fab671b3122211"
  version "0.0.74"

  def install
    chmod 0755, "acore" 
    bin.install "acore"
  end

  test do
    assert_match "Pkl", shell_output("#{bin}/acore --version")
  end
end
