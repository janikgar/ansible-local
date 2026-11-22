{
  description = "Ansible";

  inputs.nixpkgs.url = "github:nixos/nixpkgs/nixos-26.05";

  outputs = { self, nixpkgs }: {
    packages.x86_64-linux = {
      default = self.packages.x86_64-linux.ansible;
      ansible = nixpkgs.legacyPackages.x86_64-linux.ansible;
    };
  };
}
