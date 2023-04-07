function countdown() {
    const targetDate = new Date("2023-09-15T23:59:59"); // target date and time
    const now = new Date(); // current date and time
    const timeRemaining = targetDate - now;

    if (timeRemaining <= 0) {
      document.getElementById("countdown").innerHTML = "Happy New Year!";
      return;
    }

    const days = Math.floor(timeRemaining / (1000 * 60 * 60 * 24));
    const hours = Math.floor((timeRemaining / (1000 * 60 * 60)) % 24);
    const minutes = Math.floor((timeRemaining / (1000 * 60)) % 60);
    const seconds = Math.floor((timeRemaining / 1000) % 60);

    document.getElementById("countdown").innerHTML = `${days}d ${hours}h ${minutes}m ${seconds}s`;

    setInterval(countdown, 1000);
  }

  countdown();