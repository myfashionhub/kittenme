$(document).ready(() => {
  addEventListeners();
});

const addEventListeners = () => {
  $('button').click((e) => {
    const type = $(e.target).attr('class');
    getKitten(type);
  })
};

const getKitten = (type) => {
  let path;
  if (type === 'kitten') {
    path = '/random';
  } else {
    path = '/bomb?count=3'
  }

  fetch(path)
    .then((resp) => resp.json())
    .then((data) => render(data));
};

const render = (data) => {
  $('.result').empty();
  $('.result').removeClass('multiple');

  if (data.kittens) {
    $('.result').addClass('multiple');
    data.kittens.forEach((url) => renderImage(url));
  } else {
    renderImage(data.kitten);
  }
}

const renderImage = (url) => {
  const img = $('<img>').attr('src', url);
  $('.result').append(img);
}
