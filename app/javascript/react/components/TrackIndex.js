import React from 'react'
import { useEffect, useState } from 'react'

const TrackIndex = (props) => {
  const [tracks, setTracks] = useState([])

  const getTracks = async () => {
    try {
      const response = await fetch('/api/v1/tracks')
      if (!response.ok) {
        const errorMessage = `${response.status} (${response.statusText})`
        const error = new Error(errorMessage)
        throw(error)
      }
      const parsedTracks= await response.json()
      setTracks(parsedTracks)
    } catch(err){
      console.error(`Error in fetch: ${err.message}`)
    }
  }


  useEffect(() => {
    getTracks()
  }, [])

  const TrackList = tracks.map(track => {
    console.log(track)
    return (
      <li key={track.id}>{track.name}, {track.location}, {track.track_type}, {track.length}, {track.corners}, {track.corners}, {track.description}</li>
    )
  })
  
  return(TrackList)
}



export default TrackIndex