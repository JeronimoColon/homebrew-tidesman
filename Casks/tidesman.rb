cask "tidesman" do
  version "0.1.2"
  sha256 "2752adea637cf18b315b6984134ca0c0ba3d4c49be7a18e11a01163e87c71051"

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
