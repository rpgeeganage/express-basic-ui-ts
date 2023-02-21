/* eslint-disable no-undef */
function callApi() {
  return fetch('/api', {
    method: 'GET',
    headers: {
      Accept: 'application/json',
      'Content-Type': 'application/json',
    },
  })
    .then((response) => response.json())
    .then((json) => {
      document.getElementById('sample').innerHTML = JSON.stringify(json);
    });
}
