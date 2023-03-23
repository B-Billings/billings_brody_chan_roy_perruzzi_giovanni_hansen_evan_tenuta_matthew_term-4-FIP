import portStuff from './components/projects.js';
import portpiece from './components/pieces.js';
import { SendMail } from "./components/mailer.js";

(() => {
    const { createApp } = Vue
    
    createApp({
        data() {
            return {
                adData: [],
                message: 'Test!'
            }
        },

        methods: {

            // Protected method that runs on page load
            mounted() {
                // We're calling this method on page load, and passing in the 'items' variable
                this.getDataFromAPI('items');
            },

            // Here is where we get the data from Lumen
            getDataFromAPI(requestedData) {
                fetch(`http://localhost:8888/brodyFork/lumen/public/ads`)
                  .then(response => response.json())
                  .then(data => {
                    // Then we can make adData the data we pull from the database
                    this.adData = data;
                  })
                  .catch(error => {
                    console.log(error);
                  });
            },

            processMailFailure(result) {
        
            },

            processMailSuccess(result) {

            },

            processMail(event) {        
                SendMail(this.$el.parentNode)
                    .then(data => this.processMailSuccess(data))
                    .catch(err => this.processMailFailure(err));
            }
        },

        components: {
            portstuff: portStuff,
            portpiece: portpiece
        }
    })
    .mount('#app, #mail-form')
})()