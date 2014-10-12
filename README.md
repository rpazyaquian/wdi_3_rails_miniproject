# Party Generator

I've decided to use my old party/character generator as a base for this new Rails project.

First thing to think of is, what are my models?

# Party

A Party has a name, a goal, and a motto.

Name is a string.

Goal is a string (basically a sentence).

Ditto for motto.

A Party has many Characters.

# Character

A Character has a name, a class, and stats. The name is a string, the class is a symbol, and the stats are...a hash? No, fuck that. If I make it a hash, it might as well be its own Model. Alright, we'll leave stats for later: A Character has a name, and a class.

Name is a string.

Class is also a string, although it will be passed around as a symbol.

This is terribly simplistic, but we'll go with this for now.