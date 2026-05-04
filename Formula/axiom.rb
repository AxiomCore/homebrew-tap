class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.57.0/axiom-macos-arm64.tar.gz"
  sha256 "400d17f9b3f91a33f649730489f6a6a283eb42e645f280f61a9fa53365c90755"
  version "0.57.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
