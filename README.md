# Spotify_Playlist_Analysis

Draft of project must include following information: 

## Selected topic 
For this project, our team decided to perform analysis on a live dataset containing song data from popular Spotify playlists. We used Spotify's API to retrieve data from popular playlists and the songs each of them contain, and then used a supervised learning model to see if we could predict popularity of a song given certain features.

## Reason why they selected their topic 
Our team members, Bruno Blaszcyzk Nieves, Frank Bucalo, Hunter Gierhart, and Tyler Comerford, have a shared interest in music. In the current landscape of the music industry, the rise in popularity of streaming services as a platform to consume music has made data analysis an extremely useful tool for companies involved in the music industry. Nowadays, artists and record labels have access to an incredible amount of data and can use data analyis as a tool to reach audiences that they might not have been able to reach before and expand their following and fanbase in the process.

## Description of their source of data 
We scraped together the database that we used for this project ourselves using Spotify's API. Our finalized dataset is in the form of a csv file that contains several key metrics for each song. Metrics in our dataframe included 'danceability', 'energy', 'key', 'loudness', and 'popularity', among others. These metrics are assigned to each song by Spotify we assume using algorithms developed by Spotify, although we cannot be certain how these metrics are assigned as Spotify does not make this process public.

## Questions they hope to answer with the data 
Our target variable in our machine learning model is 'popularity.' Essentially, we want an artist to be able to predict the popularity of a song from their catalog based off of the metrics contained in our dataset. Ideally, an artist could plug the metrics of their song into our model and would in return receive a predicted popularity score that would tell them how likely it is that their song would become popular on Spotify.

## Description of the communication protocols
Our team communicated mainly via Slack and occasionally via Zoom meetings.
