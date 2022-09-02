# SHELL SCRIPT - BACOD
## Created by [resitdc](https://github.com/resitdc)

This repository is for create a shellscript automation, but before we talk about shellscript automation you have to know about CI CD. so basicly CI CD is automation for deployment or testing. when you want to deploy some app ( let say nodejs ) in a *normal* flow, the flow must be like this

    Connect to SSH Server
    Pull newest commit
    npm install ( if you have a new dependencies )
    pm2 restart *app_name*
    pm2 save
    done, the app is ready to launch

am i right?, oke with CI CD you can do that step automaticaly by system, you can use many third party for CI CD, you can use Jenkins, Circle CI, GIthub Action, and the other tools

but, the problem is CI CD work for VPS.

you can't implement CI CD on Web Host or Shared Host, soo i create this idea how if i put the flow for deploying in Shellscript?, that's like CI CD right?
i just write the right syntaks and the right way to deploy in the shellscript file. so when i want to deploy new version in my app i just open the ssh then run the shellscript file, you just need 3 step ( maybe less )



```mermaid
graph LR
A[CONNECT TO SSH SERVER] 
A --> B[RUN SHELLSCRIPT]
B --> C[DONE]
```

how is it?, brilliant isn't it?

so that's the basic idea, from that i can develop with whatsapp integration and email integration. so you can update app on your server using whatsapp chat message, and you will get notifications to your email that your application has been built.


contact me for more ideas
[INSTAGRAM](https://instagram.com/resitdc)
[LINKEDIN](https://www.linkedin.com/in/resitdc/)
[TWITTER](https://twitter.com/resitdc)
[OFFICIAL WEBSITE](https://resitdc.id)
