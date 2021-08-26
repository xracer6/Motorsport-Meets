import React from 'react'
import { BrowserRouter, Route, Switch } from "react-router-dom"
import Intro from './Intro'

export const App = (props) => {
  return (
    <BrowserRouter>
      <Switch>
        <Route exact path={'/'} component={Intro}/>

      </Switch>
    </BrowserRouter>
  )
}

export default App
