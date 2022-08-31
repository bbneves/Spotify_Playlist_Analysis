# Spotify_Playlist_Analysis

![Spotify logo](https://storage.googleapis.com/pr-newsroom-wp/1/2018/11/Spotify_Logo_CMYK_Green.png)

## Links

[Google Slide Presentation (Draft)](https://docs.google.com/presentation/d/1ixixDgI3AXCSs7oHHZay8Znu-JMH7h9iGQ141RH3gZw/edit#slide=id.p)

## Selected Topic 
For this project, our team decided to perform analysis on the audio features of songs from some of the most popular Spotify playlists. We used Spotify's API to retrieve data on up to 100 songs per playlist selected, and then used a supervised learning model to predict the popularity score of a song given its audio features.

## Topic Selection Process
Our team members, **Bruno Blaszcyzk Neves**, **Frank Bucalo**, **Hunter Gierhart**, and **Tyler Comerford,** have a shared interest in music, with Hunter working at a record label. The rise in popularity of streaming services as a means to consume music has provided a plethora of new, valuable metrics to analyze, for companies, artists, and enthusiasts like us. Analysis on this data can be used as a tool to target audiences, improve reach, and uncover trends on a mass scale.

Our project centers around DSP (digital service provider) playlisting: record labels and artists have a vested interest in obtaining favorable playlisting from Spotify curators - a task that is easier said than done. These playlists drive streams and thus revenue for these parties. By analyzing audio features for songs by playlist, our group hopes to uncover useful trends for copyright owners to utilize when pitching their music for editorial placement. As the largest DSP, Spotify is the most important player in recorded music today. Their API makes more data available to the public than ever before, and is the paramount tool for music related data analysis.

## Description of data source
We scraped together the dataset that we used for this project ourselves using Spotify's API. Our finalized dataset is in the form of csv files joined in PGAdmin that contain several key metrics for each song. Metrics in our dataframe included 'danceability', 'energy', 'key', 'loudness', and 'popularity', among others. These metrics are assigned to each song by Spotify using algorithms that they've developed. While this data itself is public, details on the algorithm and the processes of generating these scores are not.

### Playlist Selection Criteria

We chose 100 editorial Spotify playlists of the most popular musical genres based on the following criteria:

* 100,000+ follower playlists only
* No regional playlists (“Hot Hits Brazil,” “New Music Friday Germany," etc)
* Playlists for frontline releases only (no catalog releases, i.e., “80s classic hits” or “Best of The 90s”)
* No artist-specific playlists (ex. "This Is Katy Perry")
* Ideally genre playlists (Ex. “Indie Pop,” “Sludge Rock” etc)
* No “New Music Friday” type playlists that are different every week (every playlist should have generally consistent audio features from week to week)
* No chart playlists (ex. “Top Songs Global,” “Viral Hits”)
* Editorial Playlists only (Official Spotify playlists only)

## Questions to answer with the data 
*Can a song's audio features predict its popularity?*

Our target variable in our machine learning model is 'popularity.' Theoretically, we want an artist to be able to predict the popularity of a song from their catalog based off of the audio features generated by Spotify. Ideally, an artist could plug the metrics of their song into our model and would in return receive a predicted popularity score that would tell them how popular they could expect their song to become based on its sound.

## Communication protocols
Our team communicated primarily via Slack, and at least twice a week via Zoom meetings on Monday and Wednesday evenings.

## Data Exploration
**01. Playlist Selection**

Using the criteria outlined above, 100 editorial playlists were selected and put into a csv file with their titles, number of followers, two genre identifications, and the unique URI used to request information from Spotify's API.

![playlist_df](https://github.com/bbneves/Spotify_Playlist_Analysis/blob/hunter/playlist_df.png)

**02. Playlist Tracks**

In order to pull audio features on a song, Spotify's API needs the track URI. To obtain these, we created a for loop to go through the above playlist_df, request the playlists tracklist and pulled each song name, lead artist name, popularity score, and track URI. These features were then stored in a separate dataframe. 

![playlisty_df2](https://github.com/bbneves/Spotify_Playlist_Analysis/blob/hunter/playlist_df2.png)

**Note:** Spotify's API only allows for 100 track pulls per playlist, so playlists with more than 100 tracks only had the first 100 tracks obtained. This affected a minority of the playlists selected, and we believe the audio features of the first 100 tracks is representative of the playlist overall.

**03. Audio Features**

The final step in obtaining our dataset was to pass the 8,100 track URIs from above to another for loop which requested audio features on each track. An example API response for a single is below:

![api_response](https://github.com/bbneves/Spotify_Playlist_Analysis/blob/hunter/api_response.png)

This information was stored in a separate dataframe, track_df. For more details on each audio feture, one can read [Spotify's API documentation](https://developer.spotify.com/documentation/web-api/reference/#/operations/get-audio-features).

![track_df](https://github.com/bbneves/Spotify_Playlist_Analysis/blob/hunter/track_df.png)

The dataframes were exported as CSV files and then imported to PGAdmin where they were joined on the song URI column. This join was necessary to predict a song's popularity score based on its audio features, as these pieces of information require different API calls and were stored in different files/dataframes.

## Data Analysis


