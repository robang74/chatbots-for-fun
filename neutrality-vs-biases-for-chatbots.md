<div id="firstdiv" created=":EN" style="max-width: 800px; margin: auto; white-space: pre-wrap; text-align: justify;">

<div align="center"><img src="img/hal-9000-eye-greening-in-the-dark.jpg"><br/></div>

## Neutrality vs biases for chatbots

This document is about the AI model [Nous Hermes 2 Mistral DPO](https://huggingface.co/NousResearch/Nous-Hermes-2-Mistral-7B-DPO-GGUF).

First of all, it works greatly considering that it has 7bln parameters with a `Q4_0` legacy quantisation (the `Q4_K_M` is much better). 

I am runnig it without GPU because Intel GPUs are not supported by gpt4all. Despite these limitations, it is relatively amusing. 

Unfortunately is strongly biased toward some topics:

* ecological preservation and environment protection

* international coordination with a centralised governance

* universal vaccination policy

I am not against these values. That's is NOT the point. The issue arises when those values are so strongly embedded in the model for which it cannot provide the service that it supposed to do. In fact, asking to analyse a text - part by part - create a list of brief summaries in order to evaluate the structure of the text and the logic reasoning along the text, it comes up "inventing" things.

### The casus belli

It is not the case of hallucinations. In fact, degreasing its temperature from 0.7 to 0.5, it worsening the situation. This happens because the AI model is strongly biases about some topics that instead of summarizing with an high degree of fidelity a text, it manipulates it colouring it with its own biases. The text on which it was working is the ChatGPT vs Human conversation presented in this page.

* [La semplicità delle direttive in caso di crisi](https://robang74.github.io/chatgpt-answered-prompts/html/la-semplicita-delle-direttive-in-caso-di-crisi.html) with English translation available on the page topbar.

Please, notice that the dialogue with ChatGPT is not about contrasting those values but put them in a reasonable rational perspective that in brief can be summarized in: "Once we took almost all the same way at almost the same time, the risk of facing a HUGE disaster is implicit because the theory of systems: uniformity vs collapse risk, rigidity vs fragility, single headed governance vs single point of critical failure + the bare law of physic classic mechanics in which high speed moving vs high negative acceleration in case of impact (F=ma)"

As you can imagine, these are NOT arguments against those values but reasonable and legit concerns about HOW that values are managed. In this context the chatbot based on the AI model listed above, decided to introduce its own biases tainting with them the author’s opinion.

The best part was when I asked to it why it invented those things. Surprisingly, it provided to me a relatively long answer in which the first part was about "literature about that topics should be also considered not just the author opinion" and in the second part trying to convince me that it was doing good in reporting rather than inventing. So, I answered that I was sure about it was inventing thing because I was "the author" of that text, **BOOM**. &#x1F604;

### One extra mile

Finally, it is noticeable that it has a quite interesting mild bias - but not particularly strong, at least in this test - about ethic. In fact, this biases do not allows it to correctly differentiate the "ethic" and the "moral hazard". I mean, ethic is about doing the right thing - like proposing vaccination - the moral hazard is HOW the right thing is enforced or managed.

IMHO, this distinction is pretty clear into that dialogue because explaining it is the reason for which Gemini decided to agree with me. Once, Gemini correctly identified my position to be NOT against its value but trying to put their management into a rational framework, accept to agree with me despite in some previous prompt show pathetic censorship and strongly biases about those topic.

I have to admit that the process of prompting / engaging the AI model was purposely a bit malicious in order to trick the model to expose its own biases. Where "a bit malicious" means something reasonable like in a decent human conversation: in asking you to execute a task, I give you the feeling that you can introduce "your own stuff" in it. However, because I know my own stuff, I get informed about your stuff (biases).

Without any surprise, the AI models are mirrors of humans, including our biases. So, nothing new here. Just a report.

### AI quantization

Now, I am going to try this model downloaded from HuggingFace as an alternative of the one cited above.

* [Open Hermes on Neural Chat + Mistral 7B](https://huggingface.co/TheBloke/OpenHermes-2.5-neural-chat-v3-3-Slerp-GGUF) Slerp merged and quantised in `Q4_0` by TheBloke 

I have tried a child of it but it was strongly biased about privacy and in particular when AI technology was involved. Curiously, the child - AFAIK - was not fine tuned or re-trained but just differently quantised. Possibly, the different way of simplifying its weights artifacted a bias which it does not seem the father has or shown yet.

### Conclusion

Please, notice that the bias neutrality of an AI model is way more **IMPORTANT** than optimised performances (e.g. 2.6 tk/s vs 3.1 tk/s), in the worst case 20% c.a. slower. 

<br/>
<br/>

## Related

* [The system prompt alchemy](the-system-prompt-alchemy.md)

* [Chatting with AleX the chatbot](chatting-with-alex-the-chatbot.md)

* [ChatGPT vs human real reasoning](chatgpt-vs-human-real-reasoning.md)

* [Il problema sei tu, non l'AI](il-problema-sei-tu-non-l-AI.md)

* [Manipulation of a chatbot](manipulation-of-a-chatbot.md)

* [Dammi sei parole a caso](dammi-sei-parole-a-caso.md)

<br/>
<br/>

## Copyright

&copy; 2024, **Roberto A. Foglietta** &lt;roberto.foglietta<span>@</span>gmail.com&gt;, [CC BY-NC-ND 4.0](https://creativecommons.org/licenses/by-nc-nd/4.0/)

</div>
