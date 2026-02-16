class Acore < Formula
  desc "Acore evaluation engine for Axiom"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.39/acore-macos-arm64.tar.gz"
  sha256 "77730b1e77557d1cedc8bb364e743075d70e59a923d6ba2309fe85af72f7ff81"
  version "0.0.39"

  def install
    chmod 0755, "acore" 
    bin.install "acore"
  end

  test do
    assert_match "Pkl", shell_output("#{bin}/acore --version")
  end
end
