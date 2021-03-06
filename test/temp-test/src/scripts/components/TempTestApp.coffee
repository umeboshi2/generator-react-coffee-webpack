`/** @jsx React.DOM */`

`'use strict';`

React = require 'react/addons'
ReactTransitionGroup = React.addons.TransitionGroup

# global css
require '../../styles/reset.css'
require '../../styles/main.css'

imageURL = '../../images/yeoman.png'

TempTestApp = React.createClass
  render: ->
    `<div className='main'>
      <ReactTransitionGroup transitionName="fade">
        <img src={imageURL} />
      </ReactTransitionGroup>
    </div>`

mountNode = document.getElementById 'content'
React.renderComponent(`<TempTestApp />`, mountNode)

module.exports = TempTestApp