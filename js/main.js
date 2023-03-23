import portStuff from './components/projects.js';
import portpiece from './components/pieces.js';
import adComponent from "./components/adComponent.js";
import forumComponent from "./components/forumComponent.js";
import { SendMail } from "./components/mailer.js";
import databaseLocation from "./config.js";

// Call the getDataFromAPI method with the appropriate endpoint



(() => {
    const app = Vue.createApp({

        // Protected method that runs on page load
        mounted() {
            // We're calling this method on page load, and passing in the 'items' variable
            this.getDataFromAds(databaseLocation.adsDatabase);
            this.getDataFromForum(databaseLocation.forumDatabase);
        },

        data() {
            return {
                adData: ['test'],
                forumData: ['test'],
                message: 'Test!'
            }
        },

        methods: {

            // Here is where we get the data from Lumen
            // requestedData is from the asbove 
            getDataFromAds(requestedData) {
                // Gonna change from hardcoding the URl to something more modular
                fetch(requestedData)
                  .then(response => response.json())
                  .then(data => {
                    console.log(databaseLocation);
                    // Then we can make adData the data we pull from the database
                    this.adData = data;
                  })
                  .catch(error => {
                    console.log(error);
                  });
            },

            getDataFromForum(requestedData) {
                // Gonna change from hardcoding the URl to something more modular
                fetch(requestedData)
                  .then(response => response.json())
                  .then(data => {
                    console.log(databaseLocation);
                    // Then we can make adData the data we pull from the database
                    this.forumData = data;
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
            ads : adComponent,
            forum: forumComponent,
            portstuff: portStuff,
            portpiece: portpiece
        }
    })

    app.mount('#app, #mail-form')
})()