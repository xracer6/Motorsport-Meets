import React from 'react'
import { useEffect, useState } from 'react'

const EventsIndex = (props) => {
  const [events, setEvents] = useState([])

  const getEvents = async () => {
    try {
      const response = await fetch('/api/v1/events')
      if (!response) {
        const errorMessage = `${response.status} (${response.statusTest})`
        const error = new Error(errorMessage)
        throw(error)
      }
      const parsedJobs= await response.json()
      setJobs(parsedEvents)
    } 
    catch(err){
      console.error(`Error in fetch: ${err.message}`)
    }
  }

  const eventList = events.map(eachEvent => {
    return (
      <li key={eachEvent.title}>

      </li>
    )
  })

  return(eventList)
}
    
  

export default EventsIndex