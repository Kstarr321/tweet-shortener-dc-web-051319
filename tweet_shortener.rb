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

def bulk_tweet_shortener(arr_tweets)
  arr_tweets.map do |tweet|
    split_tweet = tweet.downcase.split(" ")
    subbed_tweet = []
    split_tweet.map do |word|
      a = word.to_sym
      if dictionary[a]
        subbed_tweet << dictionary[a]
      
      else 
        subbed_tweet << word 


      end
    end
    string_tweet = subbed_tweet.join(" ").capitalize
    split_array = string_tweet.split(" ")
    final_arr = []
    split_array.map do |wordy|
      if wordy == "i"
        final_arr << wordy = "I"
      else 
        final_arr << wordy
      end 
      
    end
    puts final_arr.join(" ")
  end
  
end 