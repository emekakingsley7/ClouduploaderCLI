# ClouduploaderCLI
This is a bash CLI tool that allows users to upload files quickly, providing a seamless experience


## Overview
This is a simple bash-based CLI tool that allows users to quickly upload files to an S3, providing a simple and seamless upload experience similar to users.

## Prereguities
 To successfully create this, you need certain skills which based on my experience helped alot. They are;

 **AWS CLI*: Installed and configured with appropriate credentials.
   - Installation guide: https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html
   - Configuration guide: https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-quickstart.html

2. **Bash Shell*: Ensure you are using a Unix-based system like Linux, macOS, or Windows for Linux, with Bash installed.

3. **S3 Bucket*: An existing AWS S3 bucket to upload files to.

## Set up
This is the set up I used on aws cloudshell which i believe can be customized;

**Clone the Repository*:

    bash
    git clone https://github.com/your-username/your-repo.git
    cd your-repo
    ```

2. **Make the Script Executable*:

    ```bash
    chmod +x clouduploader.sh
    ```

## Usage Examples

1. **Upload a File to the Root Directory of the S3 Bucket**:

    ```bash
    ./clouduploader.sh /path/to/your/file.txt
    ```

2. **Upload a File to a Specific Directory within the S3 Bucket**:

    ```bash
    ./clouduploader.sh /path/to/your/file.txt target-directory

  ## Common Issues
  Just like any other programming or scripting stuff, there may be some issues like syntax or access control errors a long the way. Here some of the issues I encountered are:
  permission deneied error - can be checked by taking a good look at your access control configuration, s3 bucket plicy and IAM rules
  file not found error - naming and syntax mismatch caused this
