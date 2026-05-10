class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.83.0/axiom-macos-arm64.tar.gz"
  sha256 "453ed07be7b581338f12dab79415db83434ca259844825aa493079f17797f624"
  version "0.83.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
