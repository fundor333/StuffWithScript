import feedparser

d = feedparser.parse("http://www.fundor333.com/feed/")

for post in d.entries:
    print (post.title + " [" + post.link+']:\n'+post.description+"\n")
