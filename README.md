# The Great Ethereum Beer Machine

For the next few sessions of our Toronto [Ethereum Developers Meetup Group](https://www.meetup.com/ethereum-developers/) we are going to build an Ethereum-enabled Beer Machine. Why? Because Beer! And fun. And coding practice. Yay! Each step will be well-documented and will serve as an instructional resource for building an application and all of its components from conception to completion.

On 14 October 2016 we had a group meeting to outline a high-level breakdown of the project's development needs. The sections are as follows:

1. Front-end (UI/UX).
  * Team leads: Chelsea
  * Main features: link to eth.contract, display price, display QR code and payment info, display number of beers remaining, and perhaps info about whether beer is currently being displensed; error handling; UI design.  

2. Ethereum contract
  * Team Leads: Richard Moore and Nick Dodson. The coding for this section will be done in the main group session every 2nd Friday.
  * Main desired features: Set dynamic price, payment events, send funds upon payment to keg and delivery costs account, pay devs automatic percentage, manage frequent beer drinking points / subscription plan

3. Python code interfaced with Hardware.
  * Team Leads:  Anastasia and Michael
  * Main features: payment watching loop, send signal to machine to start/stop pouring, display "beer remaining" info on LED.

4. Hardware
  * Team Leads: Nelia and Spiro
  * Hardware, at minimum, a Raspberry Pi and Beer Machine (including a valve attachment that can be controlled by the RPi).
  * Desired: LED displaying beer remaining; an overfill sensor, a sensor for determining if cup is properly placed (and not pour if cup either not present or improperly placed)
  * Will need to work closely with Python team

Group communication and management/organization will occur primarily on the [Blockchain Canada slack group](blockchaincanada.slack.com), and the #dev-ethereum and #dev-beer-machine channels in that group. Here is the [slack invite](http://blockchaincanada.herokuapp.com/) if you aren't a member already. See you there!


## BackGround Resources
I'll start adding educational and background resources as we progress.

### Ethereum Basics
Background information that one should read.

* [Ethereum.org](https://ethereum.org): The main Ethereum foundation site.
* [Ethereum Homestead Docs](https://ethereum-homestead.readthedocs.io/en/latest/)
* [What is Ethereum, in brief](http://jefflau.net/what-is-ethereum/)

#### Learning Solidity
* [Solidity](https://solidity.readthedocs.io/en/develop/): Read the Docs. For coding smart contracts, read this guide.
* [Learn Solidity in Y minutes](https://learnxinyminutes.com/docs/solidity/): Excellent resource.
* [Browser Solidity](https://ethereum.github.io/browser-solidity): Easy way to compile and inject soldity code.

* [How to start developing on Ethereum: for web developers](http://jefflau.net/how-to-start-developing-on-ethereum-for-web-developers/)
* [Gitter.im/ethereum/solidity](https://gitter.im/ethereum/solidity): Get information from the source -- Solidity devs themselves.


#### Ether Wallets (some have solidity compiler integration)

* [Mist -- Ethereum Wallet](https://github.com/ethereum/mist/releases): Use this if you want to create an ether wallet and start using Ether, trade tokens, watch tokens, or watch contracts. It's build by the Ethereum Foundation, and is in a constant state of improvement and development.
* [MyEtherWallet](https://www.myetherwallet.com/): An in-browser wallet generator
* [Ethers.io](https://ethers.io): An in-browser wallet with a solidity code compiler; it's also adding support for applications (dApps)
* [Metamask.io](https://metamask.io): A chrome extension ethereum wallet with a good user interface. Useful in conjunction with Browser Solidity to inject contracts into the blockchain.


### Learning to Code

#### Courses
* [Harvard CS50](https://cs50.harvard.edu/): Awesome course; so many great lectures, quizzes, and reading material.

#### JavaScript

* [Eloquent Javascript](http://eloquentjavascript.net/): Highly regarded free ebook

#### Python
* [Python Crash Course: A Hands-On, Project-Based Introduction to Programming](https://www.amazon.ca/Python-Crash-Course-Hands-Project-Based/dp/1593276036)
* [Derek Banas: Learn to Program](https://www.youtube.com/playlist?list=PLGLfVvz_LVvTn3cK5e6LjhgGiSeVlIRwt): A great place to start. Learn how to code using Python.


#### Raspberry Pi
[Raspberry Pi: Main Site](https://www.raspberrypi.org/)

#### Git -- Helpful guides for managing and posting your code

* [Git Cheatsheet](https://services.github.com/kit/downloads/github-git-cheat-sheet.pdf)
* [Markdown CheatSheet](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet)



## Literature Resources

#### Books
* [Bitcoin and Cryptocurrency Technologies](http://bitcoinbook.cs.princeton.edu/). A [free draft](https://d28rh4a8wq0iu5.cloudfront.net/bitcointech/readings/princeton_bitcoin_book.pdf) is also available.
* [Mastering Bitcoin](https://www.amazon.com/Mastering-Bitcoin-Unlocking-Digital-Cryptocurrencies/dp/1449374042) (Antonopoulos, 2015).
* [Age of Cryptocurrencies](https://www.amazon.com/Age-Cryptocurrency-Blockchain-Challenging-Economic/dp/1250081556/) (Vigna and Casey, 2015).

**Must Read books** on programming and design in general, according to Jeff Atwood (Stack Exchange)
1. [Code Complete](http://www.amazon.com/exec/obidos/ASIN/0735619670/codihorr-20) (Steve McConnell)
2. [Don't Make me Think](http://www.amazon.com/exec/obidos/ASIN/0321965515/codihorr-20) (Steve Krug)
3. [Peopleware](http://www.amazon.com/exec/obidos/ASIN/0932633439/codihorr-20)
4. [The Pragmattic Programmer](http://www.amazon.com/exec/obidos/ASIN/020161622X/codihorr-20)
5. [Facts and Fallacies of Software Engineering](http://www.amazon.com/exec/obidos/ASIN/0321117425/codihorr-20)



#### Misc Coding Links and Info and Philosophies
* [Computational Thinking](http://socialissues.cs.toronto.edu/index.html?p=279.html)
* [Unix Philosophy](http://www.catb.org/esr/writings/taoup/html/ch01s06.html) and [Introduction to Unix Philosophy](http://www.linfo.org/unix_philosophy.html). First rule: Make each program do one thing well. Rule2: Expect the output of every program to become the input to another.

#### Advice
[Jeff Atwood](https://blog.codinghorror.com/)(Creator of Stack Exchange), from an ITworld [article](http://www.itworld.com/article/2932599/enterprise-software/the-importance-of-coding-buddies-and-other-advice-for-programmers.html). See his [Reddit AMA](https://www.reddit.com/r/programmerchat/comments/38pggs/i_am_jeff_atwood_long_time_blogger_at/) as well:
> 1. **Learn by Doing** real projects. "Build stuff. In the process of building something, if you need a new tool, learn it then"
> 2. **Aim to be dumbest person in the room**
> 3. **Have a coding buddy**

Adding to that, we should include:

> 4. **Start as soon as you can**. Start yesterday. This reminds of another good article on the [important habit of just starting](https://lifehacker.com/the-important-habit-of-just-starting-1771016698)

* [Don't Call yourself a programmer](http://www.kalzumeus.com/2011/10/28/dont-call-yourself-a-programmer/) -- Kalzumeus

#### Blogs
* [Hacking Distributed]()
* [Hacker News](http://news.ycombinator.com/)
