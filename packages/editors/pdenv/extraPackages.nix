{
  pkgs,
  packages,
  ...
}:
with pkgs; [
  # go
  # gofumpt
  # golines
  # golangci-lint
  # gotools
  # gopls
  # reftools
  # gomodifytags
  # gotests
  # iferr
  # impl
  # delve
  # ginkgo
  # richgo
  # gotestsum
  # govulncheck
  # mockgen
  # go-enum
  # gomvp
  # json-to-struct
  # revive
  #
  # # lua
  # sumneko-lua-language-server
  # stylua
  #
  # # nix
  # rnix-lsp
  # alejandra
  # nixpkgs-fmt
  #
  # # shell
  # beautysh
  # nodePackages.bash-language-server
  # shellcheck
  # shfmt
  #
  # # markdwon
  # cbfmt
  # nodePackages.markdownlint-cli
  # vale
  #
  # # yaml
  # yamlfixer
  # yamllint
  #
  # # python
  black
  # nodePackages.pyright
  # nvimPython
  #
  # # one-ofs
  # nodePackages.prettier
  # puppet-lint
]
