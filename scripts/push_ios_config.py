import sys
import argparse
import paramiko

def push_config(ip, username, password):
    commands = [
        'conf t',
        'hostname Terraform-IOS',
        'end',
        'write memory'
    ]

    ssh = paramiko.SSHClient()
    ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
    ssh.connect(ip, username=username, password=password)
    
    shell = ssh.invoke_shell()
    for cmd in commands:
        shell.send(cmd + '\n')
    shell.close()
    ssh.close()

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("ip")
    parser.add_argument("username")
    parser.add_argument("password")
    args = parser.parse_args()

    push_config(args.ip, args.username, args.password)

