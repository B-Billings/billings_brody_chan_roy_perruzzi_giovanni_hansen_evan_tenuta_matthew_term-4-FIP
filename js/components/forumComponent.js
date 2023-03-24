export default {

    name: 'forumComponent',


    props: ['item'],
    
    template:
    `
        <section class="">
            <h2>{{ item.post_title }}</h2>
            <p>{{ item.post_body }}</p>
        </section>
    `,

    data() {
        return {
        }
    }
}