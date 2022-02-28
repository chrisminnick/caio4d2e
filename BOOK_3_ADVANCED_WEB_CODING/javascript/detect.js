var test_audio = document.createElement('audio');
if (test_audio.play) {
  console.log('Browser supports HTML5 audio');
} else {
  console.log("Browser doesn't support HTML5 audio");
}
