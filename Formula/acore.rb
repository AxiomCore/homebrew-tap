class Acore < Formula
  desc "Acore evaluation engine for Axiom"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.40/acore-macos-arm64.tar.gz"
  sha256 "380c98d1b4273a84c961ec4accd6fb9de56db1bca9d7f43a988d26b28b8a9553"
  version "0.0.40"

  def install
    chmod 0755, "acore" 
    bin.install "acore"
  end

  test do
    assert_match "Pkl", shell_output("#{bin}/acore --version")
  end
end
