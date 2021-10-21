import React from 'react'
import { useEffect, useState } from 'react'
import TrackIndex from './TrackIndex'

const EventsIndex = (props) => {
  const [events, setEvents] = useState([])

  const getEvents = async () => {
    try {
      const response = await fetch('/api/v1/events')
      if (!response.ok) {
        const errorMessage = `${response.status} (${response.statusText})`
        const error = new Error(errorMessage)
        throw(error)
      }
      const parsedEvents= await response.json()
      setEvents(parsedEvents)
    } catch(err){
      console.error(`Error in fetch: ${err.message}`)
    }
  }

  useEffect(() => {
    getEvents()
  }, [])

  const eventList = events.map(event => {
    /*
    let track = fetch(`/api/v1/tracks/${event.location_id}`)
      .then(response => {

        track = response.json()
      })
    */
    
    return (
      <li key={event.id}>{event.title}, {event.description}, {event.location_id}, {event.organizer_id}</li>
    )
  })

  return(eventList)
}
    
  //Next step is to use Fetch to get the actual string data for location and organizer.
  //Then adjust the controller so the correct info can be taken from the API
  //Utilize Track Index in here so the data can be accessed...
  // Check Schema and Controllers as well as migratons to see if maybe it is the model itself that could have an issue

  // The Events controller references some data from the Tracks controller. There was an issue preventing data being accessed on the back end for the SHOW routing. Now that this has been fixed I will be expanding on the React functionality for Events displaying.

export default EventsIndex