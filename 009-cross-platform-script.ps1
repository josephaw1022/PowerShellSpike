if ($iswindows) {
    Write-Output "Detected Windows OS. Installing packages with Chocolatey..."
    if (!(Get-Command "choco" -ErrorAction SilentlyContinue)) {
        Write-Output "Chocolatey not found. Please install Chocolatey first."
        exit
    }
    
    choco install kind -y
    choco install kubernetes-cli -y
    choco install kubernetes-helm -y

} elseif ($islinux) {
    Write-Output "Detected Linux OS. Installing packages with DNF..."

    # Create the Kubernetes repo file for kubectl installation
    $kubeRepo = @"
[kubernetes]
name=Kubernetes
baseurl=https://pkgs.k8s.io/core:/stable:/v1.31/rpm/
enabled=1
gpgcheck=1
gpgkey=https://pkgs.k8s.io/core:/stable:/v1.31/rpm/repodata/repomd.xml.key
"@
    $kubeRepo | sudo tee /etc/yum.repos.d/kubernetes.repo | Out-Null

    Write-Output "Installing kubectl..."
    sudo dnf install -y kubectl

    # Install Helm
    Write-Output "Installing Helm..."
    curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
    chmod 700 get_helm.sh
    ./get_helm.sh

    # Install Kind
    Write-Output "Installing Kind..."
    go install sigs.k8s.io/kind@v0.25.0

} elseif ($ismac) {
    Write-Output "Detected macOS. Installing packages with Homebrew..."
    if (!(Get-Command "brew" -ErrorAction SilentlyContinue)) {
        Write-Output "Homebrew not found. Please install Homebrew first."
        exit
    }

    brew install kind
    brew install kubectl
    brew install helm

} else {
    Write-Output "Unknown Operating System. Cannot proceed with installation."
}
