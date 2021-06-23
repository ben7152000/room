<template>
<div class="popup">
  <div class="popup-inner">
    <slot/>
    <button class="btn btn-secondary close" @click="closeEdit">
      close popup
    </button>
  </div>
</div>
</template>

<script>
export default {
  name: 'Modal',
  props: {
    closeEdit: {
      type: Function,
      required: true
    }
  }
}
</script>

<style lang="scss" scoped>
.popup {
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  z-index: 999;
  background-color: rgba(0, 0, 0, 0.2);
  display: flex;
  justify-content: center;
  align-items: center;
  .popup-inner {
    height: 80vh;
    overflow-y: scroll;
    padding: 20px;
    width: 80vw;
    background-color: #fff;
    padding-right: 32px;
    border-radius: 20px;
    box-shadow: 10px 10px 5px rgba(0, 0, 0, .3);
    .close{
      display: block;
      margin: 10px auto;
    }
  }
}
</style>
