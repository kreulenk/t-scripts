import argparse
import os

def main():
    parser = argparse.ArgumentParser(description="Run commands on a network device.")
    parser.add_argument('--device', required=True, help="Device IP address or hostname")
    args = parser.parse_args()
    device = args.device


    password = os.getenv('PASSWORD')

    print(f"DEVICE: {device}\n")
    print(f"PASSWORD: {password}\n")


if __name__ == "__main__":
    main()