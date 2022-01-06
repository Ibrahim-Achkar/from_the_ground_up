// Load all the channels within this directory and all subdirectories.
// Channel files must be named *_channel.js.

const channels = require.context('.', true, /_channel\.js$/)
channels.keys().forEach(channels)


const heart = document.getElementById("hrt");
heart.addEventListener("click", (event) => {
  event.currentTarget.classList.toggle("red_heart");
});
