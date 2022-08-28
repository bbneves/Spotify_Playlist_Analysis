#!/usr/bin/env python
# coding: utf-8

# In[29]:


import os
import pprint
import pandas as pd
import spotipy
import time
from spotipy.oauth2 import SpotifyClientCredentials
from config import CLIENT_ID, CLIENT_SECRET


# In[10]:


playlist_df = pd.read_csv(f'./Resources/1_60_playlists.csv', index_col=0)
playlist_df.head()


# In[11]:


playlist_df.info()


# In[12]:


playlist_df.count()


# In[13]:


playlist_df['Playlist'].value_counts()


# In[14]:


# Set environment variables
os.environ['SPOTIPY_CLIENT_ID'] = CLIENT_ID
os.environ['SPOTIPY_CLIENT_SECRET'] = CLIENT_SECRET


# In[15]:


# instantiate Spotify class
sp = spotipy.Spotify(client_credentials_manager=SpotifyClientCredentials())


# In[17]:


track_uris = playlist_df["Song URI"]


# In[18]:


track_uris


# ### audio_features
# Get audio features for one or multiple tracks based upon their Spotify IDs Parameters
# > audio_features(tracks=[])
# 
# - tracks - a list of track URIs, URLs or IDs, maximum: 100 ids

# In[19]:


split_tracks = [track_uris[i:i + 100] for i in range(0, len(track_uris), 100)]


# In[20]:


split_tracks[0][0]


# In[53]:


list1 = split_tracks[0:1]


# In[54]:


list1[0]


# In[51]:


list_15 = split_tracks[14:15]


# In[52]:


list_15[0]


# In[55]:


list_16 = split_tracks[15:16]


# In[56]:


list_16[0]


# In[60]:


track_info = sp.audio_features(list_15[0])


# In[61]:


test_df = pd.DataFrame(track_info)
test_df


# In[62]:


test_df[35:45]


# In[34]:


track = []

for i in range(0, 15):
    time.sleep(30)
    tracks = sp.audio_features(split_tracks[i])
    track = track + tracks
    print(len(track))
    
track_df = pd.DataFrame(track)


# In[35]:


track_df


# In[ ]:




