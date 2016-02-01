require 'open-uri'
require 'json'

res = open('https://api.vineapp.com/timelines/popular')

code, message = res.status


if code == '200'
	result = JSON.parse(res.read)

	puts '-----'
	puts result['data']['records'].length
	puts result['data']['records'].class
	result['data']['records'].each {|key|
		puts key['username']
		puts key['videoUrl']
	}
end
