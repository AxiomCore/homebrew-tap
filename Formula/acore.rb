class Acore < Formula
  desc "Acore evaluation engine for Axiom"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.71/acore-macos-arm64.tar.gz"
  sha256 "46e56037e074a0abc00ff85b5ca05fa21d29e25fbe21bff3f26dd53304c0d8f4"
  version "0.0.71"

  def install
    chmod 0755, "acore" 
    bin.install "acore"
  end

  test do
    assert_match "Pkl", shell_output("#{bin}/acore --version")
  end
end
