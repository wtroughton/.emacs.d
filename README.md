This is my emacs configuration after using Emacs on-and-off since 2019.

When I first learned about Emacs, I spent a considerable amount migrating my entire workflow to use Emacs. 

* Word processing? Emacs.
* Notes? Emacs' org-mode.
* Python development? Emacs.
* Java? Oh no... Emacs.
* Git? Emacs via Magit.
* Terminal commands? Emacs. 
* Vim? Emacs.
  
Now Emacs can do all of these things pretty darn well, but I ended up spending significant amounts of development time tinkering with configuration even if I might only need the feature for a brief moment. 

The result of trying too many things too fast without understanding them is a common reason for declaring Emacs bankruptcy. That is restarting their Emacs configuration from scratch. This may be my third time declaring Emacs bankruptcy but with this declaration I will keep in mind the following ideas:

* Take your time to learn things **incrementally**.
* It's worth the extra effort to **read documents and design of commands**. This is especially true if you find yourself repeatedly using the command over time. *Cough*, learn Common Lisp already.
* Keep the configuration layer as simple as possible. **Avoid layers and layers of dependent configuration**. I chose to avoid Evil despite being an avid Vim user to reduce the conflicts of key mappings for each additional package. 
* **Focus on the important features** that enable you to get the job done without hassle. A tool that does a few operations exceptionally well may be better served over a tool that does everything at a mediocre level.
