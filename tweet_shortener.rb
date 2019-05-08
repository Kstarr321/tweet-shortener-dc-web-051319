def dictionary
  words = {:"hello" => 'hi', :"to" => '2', :"two" => '2', :"too" => '2', :"for" => '4', :"four" => '4', :"be" => 'b', :"you" => "u", :"at" => '@', :"and" => '&'}
end

def word_substituter(tweet)
  #long_words = dictionary.keys
  array_tweet = tweet.split(" ")
  arr_subbed_tweet = []
  
  
  array_tweet.map do |word|
    a = word.to_sym
    if dictionary[a] 
      #arr_subbed_tweet << dictionary[a]
      arr_subbed_tweet << word = dictionary[a]
    else 
      arr_subbed_tweet << word
    end
    
  end
  arr_subbed_tweet.join(" ")
  
end

def bulk_tweet_shortener(tweet)
  tweet.map do |phrase|
    puts word_substituter(phrase)
  end
end