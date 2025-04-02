---
title: "A Guide to the Stochastic Network Calculus"
aliases: 
url: https://ieeexplore.ieee.org/document/6868978 
doi: 10.1109/COMST.2014.2337060 
citekey: fidlerGuideStochasticNetwork2015
tags: Calculus, Convolution, Delays, end-to-end performance evaluation, moment generating functions, Random processes, scheduling, Servers, Stochastic network calculus, Stochastic processes, Tutorials, network calculus 
type: paper
created: 
modified:
---

# Paper Details
|             |                                    |
| ----------- | ---------------------------------- |
| Authors     | Markus Fidler, Amr Rizk                        |
| Pulbication | IEEE Communications Surveys & Tutorials               |
| doi         | [10.1109/COMST.2014.2337060](https://doi.org/10.1109/COMST.2014.2337060) |
>[!abstract]-
>The aim of the stochastic network calculus is to comprehend statistical multiplexing and scheduling of non-trivial traffic sources in a framework for end-to-end analysis of multi-node networks. To date, several models, some of them with subtle yet important differences, have been explored to achieve these objectives. Capitalizing on previous works, this paper contributes an intuitive approach to the stochastic network calculus, where we seek to obtain its fundamental results in the possibly easiest way. In detail, the method that is assembled in this work uses moment generating functions, known from the theory of effective bandwidths, to characterize traffic arrivals and network service. Thereof, affine envelope functions with an exponentially decaying overflow profile are derived to compute statistical end-to-end backlog and delay bounds for networks.

---

# Annotations

| <mark class="hltr-grey"> Highlight Color</mark> | Meaning          |
| ----------------------------------------------- | ---------------- |
| <mark class="hltr-red">Red</mark>               | Aim to Improve   |
| <mark class="hltr-yellow">Yellow</mark>         | Neutral comments |
| <mark class="hltr-green">Green</mark>           | Aim to replicate |
| <mark class="hltr-blue">Blue</mark>             | Further Reading  |

- <mark class="hltr-green">"Instead, the stochastic network calculus computes non-asymptotic statistical performance bounds of the type P[backlog > x] ≤ ε or P[delay > x] ≤ ε."</mark> [Page ](zotero://open-pdf/groups/5655478/items/Y7GF9IKF?page=92&annotation=LPA6DAR5)	 - This is essentially what we want.
All the convolution stuff is not relevant i think, since we are not considering cascaded curves
  <br>
- ![](Attachments/zotero/fidlerGuideStochasticNetwork2015/image-3-x303-y639.png)	 - If we want to minimize overflow probability, this is what we need
  <br>
- ![](Attachments/zotero/fidlerGuideStochasticNetwork2015/image-3-x302-y495.png)	 - If we want to minimize latency, this is what we need
  <br>


