import argparse
import json

def main():
    parser = argparse.ArgumentParser(description="Run commands on a network device.")
    parser.add_argument('--device', required=True, help="Device IP address or hostname")
    parser.add_argument('--commands', required=True, help="Commands to run.")
    args = parser.parse_args()
                                                                
    device = args.device
    commands_input = args.commands

    try:
        print("The device you entered was", device)
        commands = json.loads(commands_input)
        print("The command you entered was ")
        print(*commands, sep = ', ')
    except json.JSONDecodeError:
        commands = [commands_input]
        print("Inputted value of " + commands + " for commands could not be parsed")

if __name__ == "__main__":
    main()