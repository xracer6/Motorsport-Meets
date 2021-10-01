import React from 'react'
import { useEffect, useState } from 'react'

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
    return (
      <li key={event.id}>{event.title}</li>
    )
  })

  return(eventList)
}
    
  

export default EventsIndex