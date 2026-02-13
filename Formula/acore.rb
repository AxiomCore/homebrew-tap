class Acore < Formula
  desc "Acore evaluation engine for Axiom"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.3/acore-macos-arm64.tar.gz"
  sha256 "e48b32970350d7e0ebcb27f46e8a65531f0dc58be069d4e123e539557c0f9050"
  version "0.0.3"

  def install
    bin.install "acore"
  end

  test do
    assert_match "Pkl", shell_output("#{bin}/acore --version")
  end
end
