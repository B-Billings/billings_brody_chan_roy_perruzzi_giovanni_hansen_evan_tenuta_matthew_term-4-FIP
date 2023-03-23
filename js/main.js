import portStuff from './components/projects.js';
import portpiece from './components/pieces.js';
import { SendMail } from "./components/mailer.js";
(() => {
    const { createApp } = Vue

    createApp({
        created() {
            console.log('vue instance is created');

            //fetch('./scripts/json.php')

            fetch('./data.json')
                .then(res => res.json())
                .then(data => this.ProjectData = data)
            .catch(error => console.error(error));
        },

        data() {
            console.log('vue data check');
            return {
                ProjectData: {},
                displayothers: true,
                getitemInfo: false
            }
        },
        
        components: {
            portstuff: portStuff,
            portpiece: portpiece
        }
    }).mount('#app')

    createApp({
        data() {
            return {
                message: 'Test!',
                dataFromAPI: []
            }
        },

        methods: {

            // This executes on page load
            mounted() {
                this.getDataFromAPI()
            },

            // Here is where we get the data from Lumen
            getDataFromAPI(requestedData) {
                fetch(`http://localhost:8000/${requestedData}`)
                  .then(response => response.json())
                  .then(data => {
                    this.dataFromAPI = data;
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
        }
    }).mount('#mail-form')

    
})()
