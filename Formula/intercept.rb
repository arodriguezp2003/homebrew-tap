class Intercept < Formula
  desc "HTTP reverse proxy with real-time traffic inspection and response mocking"
  homepage "https://intercepthq.com"
  version "1.1.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arodriguezp2003/intercepthq/releases/download/v1.1.0/intercept-1.1.0-darwin-arm64.tar.gz"
      sha256 "e54e2fcfa4eadea9119b9a374bbefbc70dcec8cab2b69eddda9553258c108097"

      def install
        bin.install "intercept-darwin-arm64" => "intercept"
      end
    else
      url "https://github.com/arodriguezp2003/intercepthq/releases/download/v1.1.0/intercept-1.1.0-darwin-amd64.tar.gz"
      sha256 "55ef08f8cf7d350d6a374a772ebad7d707b65fcb2723d07231cc6a40c81736f6"

      def install
        bin.install "intercept-darwin-amd64" => "intercept"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/arodriguezp2003/intercepthq/releases/download/v1.1.0/intercept-1.1.0-linux-arm64.tar.gz"
      sha256 "50f61bf874b4bd76412afee3666b7e3ab43853b7f4456675d506b5b44ea34c06"

      def install
        bin.install "intercept-linux-arm64" => "intercept"
      end
    else
      url "https://github.com/arodriguezp2003/intercepthq/releases/download/v1.1.0/intercept-1.1.0-linux-amd64.tar.gz"
      sha256 "3293d3842a3c6e8643b749eefd97f8bbf23726ed03b0bcc97ec67bcdbe4df793"

      def install
        bin.install "intercept-linux-amd64" => "intercept"
      end
    end
  end

  test do
    assert_match "intercept", shell_output("#{bin}/intercept --version")
  end
end
