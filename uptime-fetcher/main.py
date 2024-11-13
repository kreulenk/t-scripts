from netmiko import ConnectHandler
from getpass import getpass
import argparse
import json

def main():                                                                                     
    parser = argparse.ArgumentParser(description="Get a hosts's uptime")
    parser.add_argument('--hostname', required=True, help="Device IP address or hostname")
    parser.add_argument('--username', required=True, help="Device username")
    parser.add_argument('--key-file', required=True, help="Key file for auth")
    args = parser.parse_args()

    hostname = args.hostname
    username = args.username
    key_file = args.key_file

    linux_device = {
        "device_type": "linux",
        "host": hostname,
        "username": username,
        "use_keys": True,
        "key_file": key_file
    }

    with ConnectHandler(**linux_device) as net_connect:
        output = net_connect.send_command("uptime")
        print(output)

if __name__ == "__main__":                                                                      
    main()   



