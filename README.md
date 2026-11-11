# AxiomCore Homebrew tap

Install the public Axiom CLI on macOS:

```sh
brew tap AxiomCore/homebrew-tap
brew install axiom
```

[`Formula/axiom.rb`](Formula/axiom.rb) pins a versioned archive and checksum from [AxiomCore Releases](https://github.com/AxiomCore/AxiomCore/releases). The formula is updated by the release workflow after the CLI archive is published and verified. Report installation issues in the [AxiomCore repository](https://github.com/AxiomCore/AxiomCore/issues).

## acore-semantic (preview)

Install the Acore semantic service, which gives coding agents semantic reads and checked edits of Acore projects over MCP, a JSON-lines host and a one-shot command:

```sh
brew install axiomcore/tap/acore-semantic
```

[`Formula/acore-semantic.rb`](Formula/acore-semantic.rb) pins a versioned archive and checksum from [AxiomCore Releases](https://github.com/AxiomCore/AxiomCore/releases). It supports macOS on Apple silicon. See the [Semantic service documentation](https://docs.axiomcore.dev/semantic-service).
