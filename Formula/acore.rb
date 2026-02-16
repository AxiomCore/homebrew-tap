class Acore < Formula
  desc "Acore evaluation engine for Axiom"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.31/acore-macos-arm64.tar.gz"
  sha256 "5b08f23d968197ac51585dfc784394276dfcf8299c2512e93bf6b2ed20d0371e"
  version "0.0.31"

  def install
    chmod 0755, "acore" 
    bin.install "acore"
  end

  test do
    assert_match "Pkl", shell_output("#{bin}/acore --version")
  end
end
