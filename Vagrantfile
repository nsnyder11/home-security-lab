Vagrant.configure("2") do |config|

  # Kali (Attacker)
  config.vm.define "kali" do |kali|
    kali.vm.box = "kalilinux/rolling"
    kali.vm.hostname = "kali"
    kali.vm.network "private_network", ip: "192.168.56.10"
    kali.vm.provider "virtualbox" do |vb|
      vb.name = "Kali-Attacker"
      vb.memory = 4096
      vb.cpus = 2
    end
    kali.vm.provision "shell", inline: <<-SHELL
      apt update -y
      apt install -y nmap metasploit-framework sqlmap burpsuite gobuster hydra john hashcat
    SHELL
  end

 # Metasploitable3 Ubuntu (Vulnerable Linux Target)
   config.vm.define "meta-win" do |meta|
    meta.vm.box = "generic/ubuntu1804"
    meta.vm.hostname = "meta-ubuntu"
    meta.vm.network "private_network", ip: "192.168.56.20"
    meta.vm.boot_timeout = 900
    meta.ssh.insert_key = false

    meta.vm.provider "virtualbox" do |vb|
      vb.name = "Meta-Ubuntu"
      vb.memory = 2048
      vb.cpus = 2
    end

    meta.vm.provision "shell", inline: <<-SHELL
      sudo apt update
      sudo apt install -y openssh-server
      sudo systemctl enable ssh
      sudo systemctl start ssh
    SHELL
  end

  # DVWA
    config.vm.define "dvwa" do |dvwa|
    dvwa.vm.box = "jaxmetalmax/dvwa-debian"
    dvwa.vm.hostname = "dvwa"
    dvwa.vm.network "private_network", ip: "192.168.56.30"
    dvwa.vm.provider "virtualbox" do |vb|
      vb.name = "DVWA"
      vb.memory = 1024
      vb.cpus = 1
    end
  end

  # SIEM (ELK)
  config.vm.define "siem" do |siem|
    siem.vm.box = "generic/ubuntu2204"
    siem.vm.hostname = "siem"
    siem.vm.network "private_network", ip: "192.168.56.40"
    siem.vm.provider "virtualbox" do |vb|
      vb.name = "SIEM-ELK"
      vb.memory = 2048
      vb.cpus = 2
    end
    siem.vm.provision "shell", path: "provision/siem.sh"
  end

end
