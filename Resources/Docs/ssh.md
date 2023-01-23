# SSH

To connect to a Ubuntu/Linux VPS using an SSH client, you will need to use a terminal or command prompt on your local machine. 

Follow these steps:

## Terminal (cli)

- Open a terminal or command prompt on your local machine.
- Use the command ssh username@server_ip to connect to your VPS, where "username" is your VPS username and "server_ip" is the IP address of your VPS. For example, `ssh user@192.168.1.10`
- If this is the first time connecting, you will be prompted to confirm the authenticity of the host. Type "yes" and press Enter.
- Enter your password when prompted.
- If the login is successful, you will be connected to your VPS and will be able to run commands as if you were working directly on the server.

### Different port

You can read [this article](https://mrfloris.com/article/1116/changing-the-default-ssh-port-on-linux/) I once wrote to learn how to change the sshd's port.

If you have changed the port to 12345, the way you connect is `ssh user@192.168.1.10 -p 12345`

## PuTTY (windows)

Here are the instructions for connecting using the PuTTY client on Windows:

- Download and install PuTTY from the official website.
- Open PuTTY and enter the IP address of your VPS in the "Host Name (or IP address)" field.
- In the "Port" field, enter "22" (the default port for SSH) or the port you have configured for ssh
- In the "Category" pane on the left, navigate to "Connection" > "Data". In the "Auto-login username" field, enter your VPS username.
- In the "Category" pane on the left, navigate to "Session". In the "Saved Sessions" field, enter a name for your session and click "Save".
- Click the "Open" button to start the connection.
- If you are connecting to your VPS for the first time, PuTTY will display a security alert. Click "Yes" to continue.
- A terminal window will open, and you will be prompted to enter your password.
- If the login is successful, you will be connected to your VPS and will be able to run commands as if you were working directly on the server.

