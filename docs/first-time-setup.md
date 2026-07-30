# First-Time Setup

This guide covers the one-time manual steps required before the repository can bootstrap the development environment.

## 1. Install Xcode Command Line Tools

```sh
xcode-select --install
```

Verify:

```sh
xcode-select -p
```

Expected output:

```
/Library/Developer/CommandLineTools
```

---

## 2. Install Homebrew

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Verify:

```sh
brew --version
```

---

## 3. Configure Homebrew for Apple Silicon

If Homebrew is installed under `/opt/homebrew`, add it to your shell:

```sh
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
```

Verify:

```sh
which brew
```

Expected:

```
/opt/homebrew/bin/brew
```

---

## 4. Clone the repository

```sh
git clone https://github.com/<user>/dev-environment.git
cd dev-environment
```

---

## 5. Bootstrap the workstation

```sh
./bootstrap/bootstrap.sh
```

---

## 6. Verify the installation

```sh
./scripts/verify.sh
```

Expected:

```
Verification passed: all required tools are available.
```

---

At this point the workstation is ready for development.