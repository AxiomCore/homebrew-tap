class Acore < Formula
  desc "Acore evaluation engine for Axiom"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.42/acore-macos-arm64.tar.gz"
  sha256 "5dca06f9edef6d07ab3f3beb8253a5ef22ea972a399ffa2c8122478efe9b8ef7"
  version "0.0.42"

  def install
    chmod 0755, "acore" 
    bin.install "acore"
  end

  test do
    assert_match "Pkl", shell_output("#{bin}/acore --version")
  end
end
