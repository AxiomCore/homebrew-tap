class Acore < Formula
  desc "Acore evaluation engine for Axiom"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.68/acore-macos-arm64.tar.gz"
  sha256 "fa78bd7c1c45ed607b562d7a341548921c44acbf121c69de4cd06c85d2b56906"
  version "0.0.68"

  def install
    chmod 0755, "acore" 
    bin.install "acore"
  end

  test do
    assert_match "Pkl", shell_output("#{bin}/acore --version")
  end
end
