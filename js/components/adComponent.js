export default {

    name: 'adComponent',


    props: ['item'],
    
    template:
    `
        <div class="gridMiddleStack">
            <img class="vueImg" :src='"images/" + item.ad_image' alt="proj image" @click="getitemInfo ^= true">
            <div class="imageName"><h3 class="undername">{{ item.ad_name }}</h3></div>
            <div class="projectCont" v-show="getitemInfo">
                <div class="projinfo">
                <h3> About </h3>
                <p id="desc">{{ item.ad_desc }}</p>
                </div>
            </div>
        </div>
    `,

    data() {
        return {
            getitemInfo: false
        }
    }
}