{ pkgs, ... }:

{
  services.clickhouse = {
    enable = true;
  };
}
