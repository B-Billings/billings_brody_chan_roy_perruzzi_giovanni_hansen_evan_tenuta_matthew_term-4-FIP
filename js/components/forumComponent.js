export default {

    name: 'forumComponent',


    props: ['item'],
    
    template:
    `
        <section class="">
            <div class="">
                <h3 class="undername">{{ item.post_title }}</h3>
            </div>
            <p id="desc">{{ item.post_body }}</p>
        </section>
    `,

    data() {
        return {
        }
    }
}