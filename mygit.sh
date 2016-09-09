#!/bin/sh

mygit() {

  wakaapikey="#### Your API KEY #####"
  
  wakatime=$(date +%s)
  
  read -ra files <<< $(git ls-files -m)

  for i in "${files[@]}"

    do
  
    git diff $i

    read -p "Message For File ($i): " message

    git commit $i -m "$message"

  done
  
  git pull origin master && git push origin master
  
  #echo "{\"entity\": \"$(git rev-parse --show-toplevel)\",\"type\": \"app\", \"time\": $wakatime, \"project\": \"$(git rev-parse --show-toplevel  | sed 's#.*/##')\", \"branch\": \"$(git rev-parse --abbrev-ref HEAD)\",  \"language\": \"GIT\",  \"lines\": 0}"
  curl -0 -i -X POST "https://wakatime.com/api/v1/users/current/heartbeats?api_key=$wakaapikey" \
  -H "Content-Type: application/json" \
  -H "Cache-Control: no-cache" \
  -d "{\"entity\": \"$(git rev-parse --show-toplevel)\",\"type\": \"app\", \"time\": $wakatime, \"project\": \"$(git rev-parse --show-toplevel  | sed 's#.*/##')\", \"branch\": \"$(git rev-parse --abbrev-ref HEAD)\",  \"language\": \"GIT\",  \"lines\": 0}" \
  -o /dev/null  --write-out '%{http_code} : Response WakaTime Ok is eq (201)\n'
}

alias GC=mygit
