export default {
    name: 'projects',
    props: {
        item: Object
    },
    template:
    `
        <section class="selector">
        <div>
            <img id="vueimg" :src='"images/" + item.ad_image' alt="proj image" @click="getitemInfo ^= true">
        </div>
            <div id="imagename">
            <h3 id="undername">{{ item.ad_name }}</h3>
        </div>
        <div id="projectcont" v-show="getitemInfo">
        <div class="projinfo">
        <h3> About </h3>
            <p id="desc">{{ item.ad_desc }}</p>
        </div>
    </div>
        </section>
    `,

    data() {
        return {
            getitemInfo: false
        }
    }
}