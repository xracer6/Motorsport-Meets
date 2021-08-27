import React from 'react'
import ReactDOM from 'react-dom'
import { BrowserRouter, Route, Switch } from "react-router-dom"
import Intro from './Intro'
import EventIndex from './EventIndex'

export const App = (props) => {
  return (
    <BrowserRouter>
      <Switch>
        <Route exact path={'/'} component={Intro}/>
        <Route exact path={'/events'} component={EventIndex}/>

      </Switch>
    </BrowserRouter>
  )
}

export default App
