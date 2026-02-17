class Acore < Formula
  desc "Acore evaluation engine for Axiom"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.54/acore-macos-arm64.tar.gz"
  sha256 "0fffb1423dadf4e95936dbddcae9494accf975869699e91f7a2e1affdbab19a5"
  version "0.0.54"

  def install
    chmod 0755, "acore" 
    bin.install "acore"
  end

  test do
    assert_match "Pkl", shell_output("#{bin}/acore --version")
  end
end
