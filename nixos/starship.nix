{
  programs.starship = {
    enable = true;
    enableNushellIntegration = true;
    settings = {
      add_newline = false;
      format = ''
        (blue)[  ](bg:blue fg:black)[](bg:black fg:blue)$directory[](black) $git_branch$rust$golang$python$nodejs$nix_shell
        $character
      '';
      directory = {
        format = "[ $path ]($style)";
        style = "bg:black";
        truncate_to_repo = false;
      };
      git_branch = {
        style = "bold yellow";
      };
      character = {
        success_symbol = "[](bold white)";
        error_symbol = "[](bold red)";
      };
      nix_shell = {
        symbol = "";
        format = " [$symbol $state( \($name\))](bold blue) ";
      };
      golang = {
        symbol = "";
        format = "[ $symbol ($version_format) ](bold blue)";
      };
      python = {
        symbol = "";
        format = "[ $symbol ($version_format) ](bold green)";
      };
      nodejs = {
        symbol = "󰎙";
        format = "[ $symbol ($version_format) ](bold yellow)";
      };
      rust = {
        symbol = "";
        format = "[ $symbol ($version) ](bold red)";
      };
    };
  };
}
