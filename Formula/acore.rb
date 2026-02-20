class Acore < Formula
  desc "Acore evaluation engine for Axiom"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.63/acore-macos-arm64.tar.gz"
  sha256 "dca28cb9b52a3a05310957840dd5d290fc6e9f7d1cc6b7fea67740e19ec8d1df"
  version "0.0.63"

  def install
    chmod 0755, "acore" 
    bin.install "acore"
  end

  test do
    assert_match "Pkl", shell_output("#{bin}/acore --version")
  end
end
