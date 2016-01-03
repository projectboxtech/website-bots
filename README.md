# website-bots

A website automator using PhantomJS.

## How to use

### Usage Form
```
docker run --name=${container name} -v ${host directory} /bots jrcamenzuli/website-bots phantomjs /bots/${bot_script_name}.js
```

### Example Usage
```
docker run --name=wb1 -v /home/core/bots /bots jrcamenzuli/website-bots phantomjs /bots/bot1.js
```