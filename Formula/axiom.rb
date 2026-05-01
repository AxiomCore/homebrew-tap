class Axiom < Formula
  desc "Axiom CLI - Unified Configuration and API SDK Generator"
  homepage "https://github.com/AxiomCore/AxiomCore"
  url "https://github.com/AxiomCore/AxiomCore/releases/download/v0.13.0/axiom-macos-arm64.tar.gz"
  sha256 "74884cc387ac45d732f7975b6002de08ef11411bac5681bbbe00eda6e5b110cc"
  version "0.13.0"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
