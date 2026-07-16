cask "tidesman" do
  version "0.2.0"
  sha256 "292590fbdb5d7898cc402317af64bd618e40af1cdae749a20b8c1d19074257d4"

  url "https://github.com/JeronimoColon/tidesman-mcp/releases/download/v#{version}/tidesman-#{version}-macos-arm64.zip",
      verified: "github.com/JeronimoColon/tidesman-mcp/"
  name "Tidesman"
  desc "Free native MCP server for running, understanding, and debugging Linux containers with Apple's container tool"
  homepage "https://tidesman.dev"

  depends_on macos: :tahoe
  depends_on arch: :arm64

  binary "tidesman"

  caveats <<~EOS
    Tidesman is a signed, notarized command-line MCP server. Point your MCP client at it:

      #{HOMEBREW_PREFIX}/bin/tidesman --mode=safe

    Docs and configuration: https://tidesman.dev
  EOS
end
