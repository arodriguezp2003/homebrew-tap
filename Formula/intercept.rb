class Intercept < Formula
  desc "HTTP reverse proxy with real-time traffic inspection and response mocking"
  homepage "https://intercepthq.com"
  version "1.1.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arodriguezp2003/intercepthq/releases/download/v1.1.0/intercept-1.1.0-darwin-arm64.tar.gz"
      sha256 "3602d51690e1301b3646f324d38b7e6cb575bc4fe7076f91b17308aa95a137ca"

      def install
        bin.install "intercept-darwin-arm64" => "intercept"
      end
    else
      url "https://github.com/arodriguezp2003/intercepthq/releases/download/v1.1.0/intercept-1.1.0-darwin-amd64.tar.gz"
      sha256 "03476b49bd83a0b8feec737668b998734332228821c127cfd98b4c0ab79ecd89"

      def install
        bin.install "intercept-darwin-amd64" => "intercept"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/arodriguezp2003/intercepthq/releases/download/v1.1.0/intercept-1.1.0-linux-arm64.tar.gz"
      sha256 "b1883472be4b11b404944d344392b980bd0ffe3078b15c2a58fdd3fb69b2de07"

      def install
        bin.install "intercept-linux-arm64" => "intercept"
      end
    else
      url "https://github.com/arodriguezp2003/intercepthq/releases/download/v1.1.0/intercept-1.1.0-linux-amd64.tar.gz"
      sha256 "babb73b32c8997a40826724d66a60f28284162e0113b6b87622d7a246d8d6b28"

      def install
        bin.install "intercept-linux-amd64" => "intercept"
      end
    end
  end

  test do
    assert_match "intercept", shell_output("#{bin}/intercept --version")
  end
end
