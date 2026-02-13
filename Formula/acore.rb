class Acore < Formula
  desc "Acore evaluation engine for Axiom"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.4/acore-macos-arm64.tar.gz"
  sha256 "965baf04473c3cf9e55e13e54ca5ac86e9def1f7115d99c40fcbd06659850c00"
  version "0.0.4"

  def install
    bin.install "acore"
  end

  test do
    assert_match "Pkl", shell_output("#{bin}/acore --version")
  end
end
