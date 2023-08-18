# Setup CI/CD with GitHUB Actions

1. Install gpg https://gpgtools.org/
2. In AppStore connect generate production certificate (export it as p12) and provision profile.
3. Encrypt them in terminal
   gpg --symmetric --cipher-algo AES256 certificate.p12 
   gpg --symmetric --cipher-algo AES256 Essential_App_Production.mobileprovision
4. make folder .github/deployment/ and put in it files:
   certificate.p12.gpg
   profile.mobileprovision.gpg
   ExportOptions.plist
5. in the folder .github/workflows/   put Deploy.yml file
6. in the GitHUB actions settings make Repository secrets:
    CERTIFICATE_PASSWORD - password for certificate.p12 
    SECRET_KEY - password for gpg decrypting 
    APPSTORE_USERNAME - appleID for AppStore Connect
    APPSTORE_PASSWORD - App-Specific password for the application (can be made at https://appleid.apple.com/ - for me this link worked only with Google Chrome)
7. For first deploy - build number must be greater than previously deployed build. Later this number will be incremented automatically. 

    
