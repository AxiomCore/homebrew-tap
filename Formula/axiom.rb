class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.1.96/axiom-macos-arm64.tar.gz"
  sha256 "abdc4dd82b153b7309350bcb1565c7ad3c34e288fdf8de179622e887f33609a9"
  version "0.1.96"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
