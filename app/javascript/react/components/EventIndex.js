import React from 'react'
import { useEffect, useState } from 'react'

const EventsLink = (props) => {
  
  return(
    <div className="cell small-5 large-6 text-center">
      <div className="callout large">
          <a href="/events">Upcoming Events</a>
          <h2 className="EventName"><Link to={`/events/${props.title}`}>{props.description}</Link></h2>
      </div>
        Old Events
    </div>
  )
}

export default EventsLink