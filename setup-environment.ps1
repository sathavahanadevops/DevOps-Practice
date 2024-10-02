# Define the working directory
$workingDirectory = "C:\Users\Sathavahana.I\Desktop\Project2025\BackEnd"

# Change to the working directory
Set-Location -Path $workingDirectory

# Install fnm using winget
winget install Schniz.fnm

# Set up the environment using fnm
fnm env --use-on-cd | Out-String | Invoke-Expression

# Install Node.js version 20 if missing
fnm use --install-if-missing 20

# Verify Node.js and npm versions
Write-Output "Node.js version:"
node -v
Write-Output "npm version:"
npm -v

# Install npm packages
Write-Output "Installing npm packages..."
npm install mongodb express mongoose jsonwebtoken cors nodemon bcryptjs express body-parser razorpay crypto bcrypt multer  dotenv express-validator express-rate-limit helmet node-cron aws-sdk bcryptjs cross-env nodemailer twilio

# Run the server
Write-Output "Running the server..."
npm run server

Write-Output "Setup complete."
