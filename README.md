# AxiomCore Homebrew tap

Install the public Axiom CLI on macOS:

```sh
brew tap AxiomCore/homebrew-tap
brew install axiom
```

[`Formula/axiom.rb`](Formula/axiom.rb) pins a versioned archive and checksum from [AxiomCore Releases](https://github.com/AxiomCore/AxiomCore/releases). The formula is updated by the release workflow after the CLI archive is published and verified. Report installation issues in the [AxiomCore repository](https://github.com/AxiomCore/AxiomCore/issues).

## acore-semantic (draft, not released)

[`Formula/acore-semantic.rb`](Formula/acore-semantic.rb) is a draft for the Acore semantic service (`acore-semantic`: an MCP server, a JSON-lines host and a one-shot CLI for coding agents). Its archive is not published yet, so `brew install acore-semantic` fails until the `acore-semantic-v0.1.4` release exists. The checksum is that of the locally built archive.
