//
//  AudioDataSource.swift
//  YT-Musi
//
//  Created by Srivalli Kanchibotla on 11/28/20.
//131246908129-5hmd74sb6c4ilrjk1g8i2l3of4b25d67.apps.googleusercontent.com
//AIzaSyCJILoAQvvZVFrVus7zblqW2k4NwUN1MU4

import Foundation

class AudioDataSource {
    
    var videoID: String = ""
    var videoTitle: String = ""
}

//$data = file_get_contents("https://www.googleapis.com/youtube/v3/videos?key=YAIzaSyCJILoAQvvZVFrVus7zblqW2k4NwUN1MU4&part=snippet&id=48kekFLZkXU");
//$json = json_decode($data);
//var_dump($json->items[0]->snippet->thumbnails);
//
//
//function searchByKeyword() {
//  var results = YouTube.Search.list('id,snippet', {q: 'dogs', maxResults: 25});
//  for(var i in results.items) {
//    var item = results.items[i];
//    Logger.log('[%s] Title: %s', item.id.videoId, item.snippet.title);
//  }
//}
