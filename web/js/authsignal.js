<script src="https://cdn.authsignal.com/authsignal.min.js"></script>

// In your web/js/authsignal.js
window.initializeAuthsignal = function (apiKey) {
    // Example: Initialize Authsignal (Assume it uses `authsignal` global variable)
    authsignal.initialize({ apiKey: apiKey });
  
    // Set up additional hooks or handlers for the authentication process
    authsignal.on('login', function (event) {
      console.log("User logged in:", event.user);
    });
  
    // Add other Authsignal events or hooks as per documentation
  };
  