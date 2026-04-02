class Acore < Formula
  desc "Acore evaluation engine for Axiom"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.76/acore-macos-arm64.tar.gz"
  sha256 "1affedb6f2a2f3ca36927edf770b999421f49a14d6832e19806f101e53bbd5dd"
  version "0.0.76"

  def install
    chmod 0755, "acore" 
    bin.install "acore"
  end

  test do
    assert_match "Pkl", shell_output("#{bin}/acore --version")
  end
end
