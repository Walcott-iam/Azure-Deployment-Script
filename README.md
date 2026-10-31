# ☁️ Azure Deployment Scripts

This repository contains Bash scripts designed to automate the creation of Azure resources using the Azure CLI. These scripts were built to solve real-world scenarios by replacing repetitive manual tasks with fast, reliable, and repeatable code.

## 🛠️ Prerequisites
Before running these scripts, ensure you have:
1. **Azure CLI installed** on your machine.
2. Logged into your Azure account via the terminal:
   ```bash
   az login
   ```

---

## 📜 Script 1: Automated Resource Group Creation (`assignment3.sh`)

**Scenario:** A company was wasting time manually creating identical Resource Groups for new projects every week. 

**Solution:** This script prompts the user for a project name, then automatically provisions four environment-specific Resource Groups (`Dev`, `Test`, `UAT`, `Production`).

**How to run:**
```bash
chmod +x assignment3.sh
./assignment3.sh
```

### 📸 Evidence of Execution

**Terminal Output:**
*(Shows the script successfully creating all four environments)*
<!-- DRAG AND DROP ASSIGNMENT 3 TERMINAL SCREENSHOT HERE -->

**Azure Portal Verification:**
*(Shows the newly created Resource Groups inside my Azure account)*
<!-- DRAG AND DROP ASSIGNMENT 3 AZURE PORTAL SCREENSHOT HERE -->

---

## 📜 Script 2: One-Click Environment Deployment (`deploy.sh`)

**Scenario:** Non-technical staff needed a simple way to deploy a basic Azure environment without having to understand CLI commands or type in variables.

**Solution:** This script is a fully automated, zero-input deployment. Running it creates a Resource Group, a Storage Account (with a unique name using `$RANDOM`), and a Virtual Network. It utilizes `set -e` to ensure the script stops immediately if any command fails.

**How to run:**
```bash
chmod +x deploy.sh
./deploy.sh
```

### 📸 Evidence of Execution

**Terminal Output:**
*(Shows the script executing the Azure commands and printing success messages)*
<!-- DRAG AND DROP ASSIGNMENT 4 TERMINAL SCREENSHOT HERE -->

**Azure Portal Verification:**
*(Shows the Resource Group containing the Storage Account and Virtual Network)*
<!-- DRAG AND DROP ASSIGNMENT 4 AZURE PORTAL SCREENSHOT HERE -->

---

## 🧠 Key Concepts Applied
*   **User Input Validation:** Using `read -p` and `if` statements to prevent empty inputs.
*   **Looping:** Using Bash `for` loops to iterate through multiple environments.
*   **Error Handling:** Using `set -e` and `if/else` blocks to catch failed Azure commands.
*   **Azure Naming Constraints:** Implementing `$RANDOM` to ensure Storage Account names are globally unique.

---
*Created as part of my Cloud Engineering learning journey.*
```

### How to add the images (Once you push this to GitHub):
1. Go to your repository on **GitHub.com**.
2. Click on the `README.md` file.
3. Click the **Pencil icon** (Edit this file) in the top right corner.
4. Scroll down to where it says `<!-- DRAG AND DROP ASSIGNMENT 3 TERMINAL SCREENSHOT HERE -->`.
5. Delete that comment line.
6. **Drag and drop** your screenshot image from your computer directly into the text editor. GitHub will automatically upload it and insert the image code for you.
7. Repeat for the other three placeholders.
8. Scroll down and click **"Commit changes"**.
