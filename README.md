A discord bot for playing rengo games!

# Dependencies
- sgf-render
- python-discord
- python-sgfmill

Make sure to run the bot in an environment with read/write permissions


* installed Rust
* updated requirements.txt
* updated admin and teachers


##Notes: 
* If you're testing, be sure to replace the server/channel/account IDs with your own. Otherwise, even though you are running the project locally, it will affect the actual channels! (Ex: there will be duplicate messages, it'll be confused, the state gets weird)
  
##To run this project locally:
* Create a `requirements.txt` file and add the following lines to it
```
git+[link to your repo]
sgfmill
python-discord
```
* Create a `state.txt` file and add the following text
`[]`
* Create a `token.txt` file and add your Discord bot token to it. [Instructions here](https://www.online-tech-tips.com/computer-tips/what-is-a-discord-token-and-how-to-get-one/#:~:text=To%20get%20a%20Discord%20bot%20token%2C%20you%20first%20have%20to%20create%20a%20bot%3A)
* Go to `rengobot.py` and update the `admins` and `teachers` array with account IDs of your admins/teachers. (I don't think Columbus Go Club uses the teachers function, I actually haven't even looked into what it's for) [Instructions here](https://support.discord.com/hc/en-us/articles/206346498-Where-can-I-find-my-User-Server-Message-ID-)
  ![image](https://github.com/katie-oh/rengobot/assets/56092878/3d5b8632-4688-4bc8-9268-c8fa4dacef83)
* In `rengobot.py`, update the server ID and channel IDs [Instructions here](https://support.discord.com/hc/en-us/articles/206346498-Where-can-I-find-my-User-Server-Message-ID-)
![image](![image](https://github.com/katie-oh/rengobot/assets/56092878/d86bf8c6-371e-439b-8a42-5f5b136881e3)
* Run `python rengobot.py` in your terminal to spin up your bot! You should see something like this
![image](https://github.com/katie-oh/rengobot/assets/56092878/77231e71-8aab-4b03-80d2-4a16903423e7)

##Deploying
We are currently using fly.io with a Docker image. Once you build your Docker image, you can use your image name in the `fly.toml` file
![image](https://github.com/katie-oh/rengobot/assets/56092878/281e7851-362e-47f3-90b1-9a8e58ca31a8)

Make sure that in your fly.io configuration, that there is no scaling and that the maximum number of instances is 1! 
