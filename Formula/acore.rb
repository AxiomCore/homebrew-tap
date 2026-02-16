class Acore < Formula
  desc "Acore evaluation engine for Axiom"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.28/acore-macos-arm64.tar.gz"
  sha256 "bc4956f2c50414e468a81e42298d90576b2f8adf3de89ec2add47d7e0efcbdc3"
  version "0.0.28"

  def install
    chmod 0755, "acore" 
    bin.install "acore"
  end

  test do
    assert_match "Pkl", shell_output("#{bin}/acore --version")
  end
end
