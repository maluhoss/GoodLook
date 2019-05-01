import './App.css';
import React, {Component} from "react";
import { BrowserRouter as Router, Route } from "react-router-dom";
import Quiz from "./components/Quiz";
import Index from "./components/Index";
import Login from "./components/Login";
import About from "./components/About";
import MeettheTeam from "./components/Meettheteam";
import Signup from "./components/Signup";
export default class AppRouter extends Component {
render (){  
return (
    <Router>
      <Route path="/" exact component={Index} />    
      <Route path="/quiz" component={Quiz} /> 
      <Route path="/login" component={Login} />   
      <Route path="/about" component={About}/>
      <Route path="/meettheteam" component={MeettheTeam}/>
      <Route path="/signup" component={Signup}/>

    </Router>
  );
}

}