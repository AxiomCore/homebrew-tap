class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.45.0/axiom-macos-arm64.tar.gz"
  sha256 "9dc0589b76b5ad2c3a20f68cd5e22cf59a55953a4cde9761cd3d18d0b525bfb0"
  version "0.45.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
