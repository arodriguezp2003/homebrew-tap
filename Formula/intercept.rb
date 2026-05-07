class Intercept < Formula
  desc "HTTP reverse proxy with real-time traffic inspection and response mocking"
  homepage "https://intercepthq.com"
  version "1.0.2"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arodriguezp2003/intercepthq/releases/download/v1.0.2/intercept-1.0.2-darwin-arm64.tar.gz"
      sha256 "61b7edb5cbc1504595c793a80af1ff9a27cf18fc22bb42fa64b76334ae6d7551"

      def install
        bin.install "intercept-darwin-arm64" => "intercept"
      end
    else
      url "https://github.com/arodriguezp2003/intercepthq/releases/download/v1.0.2/intercept-1.0.2-darwin-amd64.tar.gz"
      sha256 "fc80e2aec7af0bf7793ed7ffd54bd1c7093e2ca22461801cb406460fd1e40faf"

      def install
        bin.install "intercept-darwin-amd64" => "intercept"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/arodriguezp2003/intercepthq/releases/download/v1.0.2/intercept-1.0.2-linux-arm64.tar.gz"
      sha256 "c6f132f7290f61af1133fe9de47584d48dc0e05d352bcdfa33c646ceae7fa94c"

      def install
        bin.install "intercept-linux-arm64" => "intercept"
      end
    else
      url "https://github.com/arodriguezp2003/intercepthq/releases/download/v1.0.2/intercept-1.0.2-linux-amd64.tar.gz"
      sha256 "7e3c279119950b4d28efa348f06966d1a75b2a53a8b6761efdc14fe95a654d4a"

      def install
        bin.install "intercept-linux-amd64" => "intercept"
      end
    end
  end

  test do
    assert_match "intercept", shell_output("#{bin}/intercept --version")
  end
end
