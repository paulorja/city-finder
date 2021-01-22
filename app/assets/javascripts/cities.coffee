window.addEventListener 'load', ->
  element = document.querySelector('#cities-form')
  element.addEventListener 'ajax:success', (event) ->
    cities = event.detail[0]
    document.getElementById('cities-result').innerHTML = ''
    cities.forEach (city) ->
      document.getElementById('cities-result').innerHTML += '<li class="list-group-item">' + city['name'] + '</li>'
      return
    if cities.length == 0
      document.getElementById('cities-result').innerHTML = 'Nenhuma cidade encontrada.'
    return
  return
