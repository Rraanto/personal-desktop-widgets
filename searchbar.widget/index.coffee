refreshFrequency: false

render: () -> """
  <form method="get" action="#" class="search_container">
  <input type="text" size="25" id="keyword" placeholder="insert keyword or URL">
  <input type="submit" id="enter" value=">">
</form>
"""
afterRender: (enter) ->
  $(enter).on 'click', '#enter', =>
    str = document.getElementById('keyword').value
    result1 = str.indexOf("http")
    result2 = str.indexOf('.')
    if result1 != -1 && result2 = -1
        marker = str.indexOf(':')
        url = str.substr(marker + 3)
        @run "open 'https://'" + url
    else if result1 = -1 && result2 != -1
        @run "open 'https://'" + str
    else if result1 = -1 && result2 = -1
        targetStr = ' '
        regExp = new RegExp(targetStr, 'g')
        search = str.replace(regExp, '+')
        @run "open 'https://duckduckgo.com/'" + "?q=" + search
    return

style: """
.search_container{
  position: relative;
  top: 1000px;
  left: 595px;
  box-sizing: border-box;
  display: block;
  padding: 3px 10px;
  border-radius: 0;
  height: 2.2em;
  width: 450px;
  overflow: hidden;
  background: transparent;
  border-bottom: solid 1px rgba(255, 255, 255,1);
  opacity: 0.5;
}

.search_container:hover{
  opacity: 1;
  transition: .2s opacity;
}

.search_container input[type="text"]{
  border: none;
  height: 2.0em;
  font-size: 0.9em;
  font-family: menlo;
  background: none;
  width: 400px;
  padding-left: 1em;
  color: white;
}
.search_container input[type="text"]:focus {
  outline: 0;
}
.search_container input[type="submit"]{
  cursor: pointer;
  font-family: 'futura';
  font-size: 1.3em;
  border: none;
  background: none;
  color: white;
  position: absolute;
  height: 2.5em;
  right: 8px;
  top: -10px;
  outline : none;
}
.search_container ::-webkit-input-placeholder {
  color: #9e9e9e;
}

"""
