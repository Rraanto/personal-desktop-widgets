command: ""

refreshFrequency: 300000

render: ->"""
<li class="button" id="messenger">
  <svg width="24px" height="24px" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M14.7767 14.0377L17.4267 10.1182C17.689 9.73215 17.1916 9.31251 16.8117 9.58947L13.9536 11.6038C13.8597 11.6691 13.7454 11.7045 13.628 11.7045C13.5106 11.7045 13.3963 11.6691 13.3024 11.6038L11.186 10.1266C10.5529 9.69019 9.64842 9.84965 9.22333 10.4623L6.57328 14.3818C6.31099 14.7679 6.80844 15.1875 7.18831 14.9105L10.0464 12.8962C10.1403 12.8309 10.2546 12.7955 10.372 12.7955C10.4894 12.7955 10.6037 12.8309 10.6976 12.8962L12.814 14.3482C13.4471 14.8098 14.3516 14.6504 14.7767 14.0377Z" fill="white"/>
<path fill-rule="evenodd" fill="white" clip-rule="evenodd" d="M12 2.25C6.61522 2.25 2.25 6.61522 2.25 12C2.25 14.7651 3.40194 17.2621 5.25 19.0356V21.5C5.25 21.7411 5.36589 21.9675 5.56147 22.1084C5.75704 22.2494 6.00846 22.2878 6.23717 22.2115L9.01683 21.285C9.95792 21.5871 10.9606 21.75 12 21.75C17.3848 21.75 21.75 17.3848 21.75 12C21.75 6.61522 17.3848 2.25 12 2.25ZM3.75 12C3.75 7.44365 7.44365 3.75 12 3.75C16.5563 3.75 20.25 7.44365 20.25 12C20.25 16.5563 16.5563 20.25 12 20.25C11.0405 20.25 10.1207 20.0865 9.26612 19.7865C9.10916 19.7313 8.93832 19.73 8.7805 19.7826L6.75 20.4594V18.7083C6.75 18.495 6.65915 18.2917 6.50019 18.1495C4.81118 16.6378 3.75 14.4433 3.75 12Z" fill="white"/>
</svg>
</li>
<br>
"""

afterRender: (domEl) ->
  $(domEl).on 'click', '#messenger', => @run "open '/Applications/Messenger.app'"

style: """
  position: fixed
  top: 989px
  left: 1065px

  svg
    height: 45px
    width: 45px
    opacity: .5
    top: 900px
  svg:hover
    opacity: 1

  .button
    display: inline
"""
