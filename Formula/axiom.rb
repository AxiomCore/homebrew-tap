class Axiom < Formula
  desc "Axiom CLI"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.76/axiom-macos-arm64.tar.gz"
  sha256 "11a1b67d9f067e161384e69d7a8613a1bdd230dfd1605095e78ea5c56d47418b"
  version "0.0.76"

  depends_on "acore"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
