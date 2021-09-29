import React from 'react'
import { useEffect, useState } from 'react'

const EventsIndex = (props) => {
    const [events, setEvents] = useState([])

      const getEvents = async () => {
        try {
          const response = await fetch('/api/v1/jobs')
          if (!response) {
            const errorMessage = `${response.status} (${response.statusTest})`
            const error = new Error(errorMessage)
            throw(error)
          }
          const parsedJobs= await response.json()
          setJobs(parsedJobs)
        } catch(err){
          console.error(`Error in fetch: ${err.message}`)
        }
      }


  return(
    <div> *Map through each here* </div>
  )
}

export default EventsIndex