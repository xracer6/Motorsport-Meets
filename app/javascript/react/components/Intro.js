import React from 'react'
import ReactDOM from 'react-dom'

const Intro = (props) => {

  return(
    <div>
      <p>
        Welcome to Motorsport Meets. Check out upcoming events or join to sign up or create one. Attack the track together!
      </p>

    <div className="cell small-5 large-6 text-center">
      <div className="callout large">

          <a href="/events">View Events</a>

      </div> 
    </div>

    </div>
  )
}

export default Intro