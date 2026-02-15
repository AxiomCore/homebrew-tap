class Acore < Formula
  desc "Acore evaluation engine for Axiom"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.23/acore-macos-arm64.tar.gz"
  sha256 "3e1fdb293425cd0146c7defb70dac21bedd338e2113e8214446f2975ffa296c4"
  version "0.0.23"

  def install
    chmod 0755, "acore" 
    bin.install "acore"
  end

  test do
    assert_match "Pkl", shell_output("#{bin}/acore --version")
  end
end
