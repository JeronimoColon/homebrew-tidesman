cask "tidesman" do
  version "0.1.3"
  sha256 "dae589029cd11a91f28c07375868cf99069a35cb8317557fc5753325165bcfeb"

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
