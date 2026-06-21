class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.111.0/axiom-macos-arm64.tar.gz"
  sha256 "6952d88dc5acbd8e923aa4f357c81c9727979ce6c5f28b6ac10eecc4f941783f"
  version "0.111.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
