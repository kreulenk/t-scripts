torero create repository t-scripts --url https://github.com/kreulenk/t-scripts.git

torero create decorator py-deco --schema @./py-decorator-ex/py-deco.json
torero create service python-script py-decorator-ex --filename main.py --decorator py-deco --repository t-scripts --working-dir py-decorator-ex
torero run service python-script py-decorator-ex --set device=test --set commands='["cmd1","cmd2"]'


torero create decorator ansible-deco --schema @./ansible-decorator-ex/ansible-deco.yml
torero create service ansible-playbook ansible-decorator-ex --playbook hello-world.yml --decorator ansible-deco --repository t-scripts --working-dir ansible-decorator-ex
torero run service ansible-playbook ansible-decorator-ex --set someNumber=5 --set someString=test --set someArray='["test1","test2"]' --set someObject='{"key1":"val1","key2":1}'

torero create service ansible-playbook ansible-no-deco --playbook main.yml --repository t-scripts --working-dir ansible-no-deco

torero create service opentofu-plan tofu-no-deco --repository t-scripts --working-dir tofu-no-deco

torero create service python-script py-two-min --filename main.py --repository t-scripts --working-dir py-two-min

torero create service python-script uptime-fetcher --filename main.py --repository t-scripts --working-dir uptime-fetcher

torero create service python-script is-odd --filename main.py --repository t-scripts --working-dir is-odd

torero create service ansible-playbook ansible-docker --playbook main.yml --repository t-scripts --working-dir ansible-deps