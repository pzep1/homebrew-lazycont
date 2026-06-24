class Lazycontainer < Formula
  desc "Lazydocker-style terminal UI for Apple's container CLI"
  homepage "https://github.com/pzep1/lazycont"
  license "GPL-3.0-or-later"
  head "https://github.com/pzep1/lazycont.git", branch: "main"

  depends_on "go" => :build
  depends_on "container"
  depends_on :macos

  def install
    system "go", "build",
      *std_go_args(ldflags: "-s -w -X main.version=HEAD"),
      "./cmd/lazycontainer"
  end

  def caveats
    <<~EOS
      lazycontainer drives Apple's container CLI. Homebrew installs it as a
      dependency, but you still need to start its system service before
      launching the TUI:

        brew services start container

      Or start it manually for the current session:

        container system start
    EOS
  end

  test do
    assert_match "lazycontainer", shell_output("#{bin}/lazycontainer --version")
    assert_match "Usage:", shell_output("#{bin}/lazycontainer --help")
  end
end
