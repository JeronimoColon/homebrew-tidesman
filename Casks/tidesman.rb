cask "tidesman" do
  version "0.1.0"
  sha256 "427ae0220ab281aa486ac4c2ad936bb79ff38a7d850a78468c6c7db5390168c8"

  url "https://github.com/JeronimoColon/tidesman-mcp/releases/download/v#{version}/tidesman-#{version}-macos-arm64.zip",
      verified: "github.com/JeronimoColon/tidesman-mcp/"
  name "Tidesman"
  desc "Native MCP server for running, understanding, and debugging Linux containers with Apple's container tool"
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
