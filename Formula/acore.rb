class Acore < Formula
  desc "Acore evaluation engine for Axiom"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.35/acore-macos-arm64.tar.gz"
  sha256 "57c581ba9188d289cee5bc5d1674d6842e1db02ad8b21ebb912c3600f16952be"
  version "0.0.35"

  def install
    chmod 0755, "acore" 
    bin.install "acore"
  end

  test do
    assert_match "Pkl", shell_output("#{bin}/acore --version")
  end
end
