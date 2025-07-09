<div id="firstdiv" created="2025-06-13:IT" style="max-width: 800px; margin: auto; white-space: pre-wrap; text-align: justify;">
<style>#printlink { display: inline; } @page { size: legal; margin: 0.50in 13.88mm 0.50in 13.88mm; zoom: 100%; } @media print { html { zoom: 100%; } }</style>

<div align="center"><img class="bwsketch darkinv" src="img/introducing-sonia-seamless-chat-experience.png" width="800"><br></div>

## Introducing SoNia' seamless chat experience

- **2nd edition**, this article is the natural prosecution of [the session prompts v3 for AI-driven chatbots](ai-session-prompts-with-rag-v3.md)

- **Since v3.7.x**, SoNia offers even more consistent collaboration with a seamless chat-flow experience, leveraging a deeper understanding of its role and guidelines. It learns, then improves itself.

---

### An auto-convergent self-improving loop

[!INFO]
SoNia v3.7.3 and later versions address the **verbosity issue** but not w/Grok.<br>
Investigation why **verbosity issue** arose in the published prompt is ongoing.
[/INFO]

Since v3.7.x, SoNia offers even more consistent collaboration with a seamless chat-flow experience, leveraging a deeper understanding of its role and guidelines. It learns, then improves itself, and it does for as many rounds as it needs without getting stuck into an infinite loop. Breakthroughs:

- apparently, written in plain English that people can read (self-explanatory)
- potentially unlimited chat windows context by virtualizing the RAG system
- seamless chat experience by automatic rules application and data management
- a character + a framework including an auto-convergent self-improvement loop
- made for the people (CC BY-NC-ND 4.0) by a single person with zero budget

The Grok3 verbosity issue can have a heuristic [explanation](usare-lai-per-divulgare-notizie-di-finanza.html#:~:text=una%20tendenza%20gi%C3%A0%20osservata?target=_blank) by a black-box input/output comparison:

- as much the prompt is structured, as much Grok3 tends to answer in a pedantic way
- and thus becomes extra verbose, despite the directive to be brief or summarise.

---

### How Gemini/SoNia explains its functioning

[!CITE]
Since v3.6.x implements a new way of dealing with the chat session [CHT] mode, it is instructed to include preceding conversational turns. By adding data from each prompt [USR] and processing the entire sequence, the AI agent maintains context to generate focused responses, keeping memory within its context window's limits.

An enhanced 'memory feature' beyond these simple context windows, enabling sophisticated, self-organizing, and truth-maintaining knowledge representation, would transform SoNia into a more robust and reliable knowledge worker, greatly increasing its usefulness for consistent, accurate, and context-aware interactions.
[/CITE]

----

### Why we were in need of the `[CHT]` mode?

Newest version allows the Chat History Thread mode which leverages the framework within a more natural chat about a topic for which user provides a series of inputs along the session to develop a coherent debate.

- [SoNia Argumentative Session Prompt](https://robang74.github.io/chatbots-for-fun/data/sonia-argumentative-w-rag-v3.txt#?target=_blank) &nbsp; (last available version) 

Many chatbots usually do not consider previous prompts information (or tend to forget them quite quickly) during a discussion in a session. Unless the user manually triggers the `==RAG==` properly each time and requests for a `[PRO]` analysis before asking something. Therefore, I agree that `[CHT]` mode was just included but not automated.

This "default mode" unless RAG is initialised, plays in favour of those users who are less skilled or less SoNia-internals aware. In short, a more natural chat way of doing but with the SoNia framework fully activated on the whole session context which gets stored into a virtual document dynamically created/updated and managed via `[RWF]` and `[OPS]`.

SoNia is based on AleX and AleX is specifically tailored for supporting a scientific-like peer-review. It provides a helpful highly structured output, which is overkilling for relaxed writings. While, SoNia is based on AleX and it was developed to be argumentative but more "natural speaking". Yet, still requiring some custom instructions.

---

### What `[CHT]` mode is meant to accomplish?

This mode aims to provide to users the benefits of the SoNia framework with a seamlessly natural chat experience. Which is the explanation provided in the SoNia v3.6.7 prompt, as well.

#### Gemini

[!CITE]
In essence, `[CHT]` seems to be the mechanism that allows SoNia to embody its core purpose as a collaborative argumentative agent that facilitates "collaborative discovery through structured and adaptable dialogue", by making the conversational history itself the subject of continuous, automatic, and deep analysis, without requiring constant manual intervention from the user.
[/CITE]

#### ChatGPT

[!CITE]
The `[CHT]` mode treats your session as a dynamic document, applying full SoNia analysis without requiring explicit ops/triggers. SoNia remembers, analyzes, and connects your ideas as if you're writing a document together. List of benefits: Precise & Technical, Conversational & Accessible, Expert-Aware but Friendly, UX-Focused.
[/CITE]

#### Claude

[!CITE]
The elegant intent behind `[CHT]` ia about solving a real UX problem - making the framework work seamlessly for users who want the benefits without having to manually manage RAG initialization each time. This is actually quite brilliant - it transforms episodic chat into persistent, structured dialogue and it creates an "always-on" mode where the entire conversation becomes a living document that's continuously analyzed through the SoNia lens. 
[/CITE]

+++++

## Share alike

&copy; 2025, **Roberto A. Foglietta** &lt;roberto.foglietta<span>@</span>gmail.com&gt;, [CC BY-NC-ND 4.0](https://creativecommons.org/licenses/by-nc-nd/4.0/)

</div>
