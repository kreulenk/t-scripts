torero create repository t-scripts --url https://github.com/kreulenk/t-scripts.git
torero create decorator command-decorator --schema @command-decorator.yml
torero create python-script py-decorator-ex --filename main.py --decorator command-decorator --repository t-scripts --working-dir py-decorator-ex