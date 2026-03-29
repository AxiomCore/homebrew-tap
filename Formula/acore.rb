class Acore < Formula
  desc "Acore evaluation engine for Axiom"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.70/acore-macos-arm64.tar.gz"
  sha256 "a216873137d1093322ee8cefab8619e5bdc4d638f27503936af64f3059d46221"
  version "0.0.70"

  def install
    chmod 0755, "acore" 
    bin.install "acore"
  end

  test do
    assert_match "Pkl", shell_output("#{bin}/acore --version")
  end
end
