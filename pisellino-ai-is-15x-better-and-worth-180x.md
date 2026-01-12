## PISELLINO AI IS 15x BETTER BUT IT IS WORTH 180x (*)

~> lnkd.in/dG4UNt8f (previous post)

Microsoft Bitnet 1.58 2B 4T at 12tk/s on CPU Running T=0.3 ± 0.1, Training 2x 5min AICC::1DIR. System prompt 4K tokens 1DIR::JSON, starting time: 1.1s, generates 11.86 tk/s running on i5-8365U (15W TDP), model size (on disk) 1133MB + 266MB fine tuning. Within 12h, I have demonstrated that AICC::1DIRT allows Pisellino AI to run on a €150 smartphone like Motorola 56G.

An estimation made by Kimi K2 by the numbers I gave to the K2, it is reasoable that in technical value is a 15x: size of the model perceived, quantisation perceived, thus at same utility compared. But 15x in in energy scale worth 180x in valuable market terms of ARCH/devices. Because, it is not just the numbers that matters but the stunning quality of the answer: comparable with an AI model 8B at 8bit of quantisation.

(*) better than the original, value compared the original

Moreover, in this scenario should be considered that Bitnet Q1.56bit 2B params 4T tokens trained, has been chosen because defined by the authors like an accademic proof-of-concept of a tri-state (-1,0,1) quantisation.

### FIRST TRY, BUT A GOOD ONE

~> lnkd.in/dSNUVNMu (github issue)

The toolchain is also not optimised (clang 14 instead of clang 19), the training is not optimised (by only 4K tokens context, it has been retrained for working at 8K tokes), the temperature is not optimised (took the reference for large model T=0.3 ± 0.1 while by default it would be T=0.8, instead) and finally, it runs totally on CPU without even try to leverage the basic GPU on the mobile (that makes a sort of boost for the few layers that requires FP8 or FP16 precision). In essence, this is the result of 12h of working and reasonable random choices just to create a PoC based on a PoC.

### NOW, EVERYTHING STARTS TO MAKE SENSE

This series of articles of mine, clearly shows that AI is trapped into a monopoly by NVIDIA because everything other than certified solutions are a hell-to-go, but despite this, a €250 trashware can provide a stunning ratio between functionality and price/TCO for end-users.

~> lnkd.in/dShrywUd (BoM HP440 + K80)

A great machine to achieve at home the fine-tuning/retraining of SLM. But SLM like Pisellino AI for what? For the edge devices, obviously. Suddenly, it starts to make sense separate the HW firmware (kernel + drivers) from the userland/applications level, which was the aim of RedFish OS:

~> lnkd.in/d8a_pbgp (presentation)

The only way to prevent an AI agent running on the smartphone can tamper with it in a way that even the kernel cannot cope with. Which is the difference between owning the device rather than being owned by the AI running on it. Let me guess, EU politicians made the wrong choice again?

You will be owned (pwned), dig a grave for your hopes. 🤗 🍌
