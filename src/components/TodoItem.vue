<template>
    <div>
        <li @click="handleDelete">{{ content }}</li>
    </div>
</template>

<script>
export default {
    // 接收父組件參數
    props: ['content','index'],
    methods: {
        handleDelete () {
            // 發射訊息給父組件，並將 index 索引值帶過去
            this.$emit('delete', this.index)
        }
    }
}
</script>

<style scoped>
</style>