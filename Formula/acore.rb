class Acore < Formula
  desc "Acore evaluation engine for Axiom"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.75/acore-macos-arm64.tar.gz"
  sha256 "6a5a9e1e794fabe1e897c29140be015317d00bafe670cc8beb0f529f3c83798e"
  version "0.0.75"

  def install
    chmod 0755, "acore" 
    bin.install "acore"
  end

  test do
    assert_match "Pkl", shell_output("#{bin}/acore --version")
  end
end
