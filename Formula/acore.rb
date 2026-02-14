class Acore < Formula
  desc "Acore evaluation engine for Axiom"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.12/acore-macos-arm64.tar.gz"
  sha256 "7bb7ec89ba21d7c12730a5ed7f099d617de50a4193510173e212b48726ca9491"
  version "0.0.12"

  def install
    chmod 0755, "acore" 
    bin.install "acore"
  end

  test do
    assert_match "Pkl", shell_output("#{bin}/acore --version")
  end
end
