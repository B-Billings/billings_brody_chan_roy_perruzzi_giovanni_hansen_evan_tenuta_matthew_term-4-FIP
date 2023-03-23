export default {
    name: 'projects',
    props: {
        item: Object
    },
    template:
    `
        <section class="selector">
        <div id="miniarea">
                        <img id="vueimg" :src='"images/" + ad_image' alt="proj image" @click="getitemInfo ^= true">
             </div>
                        <div id="imagename">
                            <h3 id="undername">{{ item.ad_name }}</h3>
            </div>
        <div id="projectcont" v-show="getitemInfo">
        <div class="projinfo">
        <h3> Engine </h3>
       
            <p id="desc">{{ ad_name }}</p>
            <hr>
        <h3>Horsepower</h3>
        </div>
    </div>
        </section>
    `,

    data() {
        return {
            getitemInfo: true
        }
    }
}

