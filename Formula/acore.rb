class Acore < Formula
  desc "Acore evaluation engine for Axiom"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.46/acore-macos-arm64.tar.gz"
  sha256 "d1f8fe024e138a0de6d75aa824d92ae0afc04831cfe9f7cd2c0046ef1b21704b"
  version "0.0.46"

  def install
    chmod 0755, "acore" 
    bin.install "acore"
  end

  test do
    assert_match "Pkl", shell_output("#{bin}/acore --version")
  end
end
