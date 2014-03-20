YOSHI BOT
======

This is a twitter bot based on [chatterbot](https://github.com/muffinista/chatterbot) that reminds followers about his coolness Yoshi 

To set up run

	gem install chatterbot

or

  	bundle install

Runs via cron, every two hours

    crontab -e

then

    0 */2 * * * /home/jk/code/bots/yoshibot/tweet.sh

Edit `tweet.sh` to set up your Ruby environment
