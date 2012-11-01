#!/usr/bin/python
import init_twit as tw
import time, re, random

line_file = 'lines.txt'
lines = [line.strip() for line in open(line_file)]

response_file = 'responses.txt'
responses = [response.strip() for response in open(response_file)]

def genTweet(seq):
	return random.choice(seq)

while True:
	sentence = genTweet(lines)
	tw.poster.statuses.update(status=sentence)
	print sentence+"\n"
	results = tw.twitter.search(q="@"+tw.handle,since_id=tw.last_id_replied)['results']
	jimmies = tw.twitter.search(q='"my jimmies"',since_id=tw.last_id_replied)['results']
	rustled = [jimi for jimi in jimmies if re.search('rustl',jimi['text'],flags=re.I)]
	if rustled:
		results.append(rustled[0]) # Bulk unsolicited mentions will get your account suspended
	unrustled = re.compile('rt|unrustl|thank|lo+l|laugh|hah|rofl|lmf?ao',flags=re.I)
	results = [tweet for tweet in results if not unrustled.search(tweet['text'])]
	if results:
		print "I detect a rustling in the jimmies...\n"
	else:
		print "Nobody's jimmies are rustled...\n"
	for result in results:
		asker = result['from_user']
		print asker + " said " + result['text']
		status_id = str(result['id'])
		sentence = "@"+asker+" "+genTweet(responses)
		print status_id+": "+sentence+"\n"
		if tw.last_id_replied < status_id:
			tw.last_id_replied = status_id
		tw.poster.statuses.update(status=sentence,in_reply_to_status_id=status_id)
	print "Sweet Dreams...\n"
	time.sleep(3600) # waits for one hour
