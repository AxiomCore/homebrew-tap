class Acore < Formula
  desc "Acore evaluation engine for Axiom"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.48/acore-macos-arm64.tar.gz"
  sha256 "f3b913c740b82defa37b7703a07a41775506aa08b7031423054423430a8be18c"
  version "0.0.48"

  def install
    chmod 0755, "acore" 
    bin.install "acore"
  end

  test do
    assert_match "Pkl", shell_output("#{bin}/acore --version")
  end
end
