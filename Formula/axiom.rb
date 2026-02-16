class Axiom < Formula
  desc "Axiom CLI"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.38/axiom-macos-arm64.tar.gz"
  sha256 "f0bb7ef8ba6a226339bf4544b893997c1e50872ccf462f11d7a8540c91f527dd"
  version "0.0.38"

  depends_on "acore"

  def install
    bin.install "axiom"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/axiom --help")
  end
end
