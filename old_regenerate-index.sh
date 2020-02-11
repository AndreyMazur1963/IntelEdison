rm ~/myopenaps/enact/index.html
touch ~/myopenaps/enact/index.html
(cat ~/myopenaps/enact/smb-enacted.json | jq -r .timestamp | awk '{print substr($0,12,5)}') >> ~/myopenaps/enact/index.html
(cat ~/myopenaps/enact/smb-enacted.json | jq -r .reason) >> ~/myopenaps/enact/index.html
(echo -n 'TBR: ' && cat ~/myopenaps/enact/smb-enacted.json | jq .rate) >> ~/myopenaps/enact/index.html
(echo -n 'IOB: ' && cat ~/myopenaps/enact/smb-enacted.json | jq .IOB) >> ~/myopenaps/enact/index.html
(echo -n 'Edison Battery: ' && cat ~/myopenaps/monitor/edison-battery.json | jq -r .battery | tr '\n' ' ' && echo '%') >> ~/myopenaps/enact/index.html
(echo -n 'Insulin Remaining: ' && cat ~/myopenaps/monitor/reservoir.json) >> ~/myopenaps/enact/index.html
