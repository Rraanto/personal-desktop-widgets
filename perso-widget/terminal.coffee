command: ""

refreshFrequency: 300000

render: ->"""
</li>
<li class="button" id="terminal">
  <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
  	 viewBox="0 0 3000 3000" style="enable-background:new 0 0 3000 3000;" xml:space="preserve">
  <style type="text/css">
  	.st1{fill:#FEFEFE;}
  </style>
  <g>
  	<g>
  		<path class="st1" d="M1103.06,2043.6c-20.98,19.49-41.53,37.43-60.81,56.65c-154.1,153.58-308.26,307.1-461.45,461.58
  			c-16.64,16.78-25.97,16.65-40.32-0.58c-13.05-15.68-27.33-30.99-43.51-43.26c-22.22-16.86-16.08-27.59,1.01-44.49
  			c138.72-137.22,276.18-275.7,414.89-412.93c15.19-15.03,16.13-22.04,0.38-37.61c-139.46-137.86-277.53-277.12-417.07-414.88
  			c-17.69-17.47-18.09-27.06,0.6-42.51c18.71-15.47,35.13-33.81,51.87-51.53c8.1-8.57,13.53-10.9,23.31-1.11
  			C747.7,1688.95,923.79,1864.62,1103.06,2043.6z"/>
  		<path class="st1" d="M1382.62,2478.21c111.23,0,222.48,1.1,333.68-0.79c27.22-0.46,33.17,7.99,30.9,32.48
  			c-2.06,22.23-1.71,44.89-0.05,67.19c1.42,18.97-6.13,22.25-23.4,22.21c-228.31-0.55-456.63-0.62-684.94,0.08
  			c-20.01,0.06-25.18-6.43-23.95-25.07c1.47-22.32,1.75-44.93-0.05-67.2c-1.79-22.18,4.1-29.84,28.28-29.53
  			C1156.25,2479.01,1269.44,2478.21,1382.62,2478.21z"/>
  	</g>
  </g>
  </svg>
</li>

<br>
"""

afterRender: (domEl) ->
  $(domEl).on 'click', '#terminal', => @run "open '/System/Applications/Utilities/Terminal.app'"

style: """
  position: fixed
  top: 988px
  left: 525px

  svg
    height: 45px
    opacity: .5
    border: solid 2.5px white
    border-radius : 3px
  svg:hover
    opacity: 1

  .button
    display: inline

  #Messenger
    top: 10px;
"""
