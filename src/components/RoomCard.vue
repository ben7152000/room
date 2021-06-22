<template>
  <div class="card">
    <div class="cover" :style="bgUrl">
      <h3>{{room.name}}</h3>
      <span class="times" @click="deleteRoom(id)"><i class="fas fa-times"></i></span>
    </div>
    <div class="info">
      <h4>{{room.eng}}</h4>
      <h5>{{finalDiscountShow}} 折</h5>
      <div class="icons">
        <span><i class="fas fa-coffee"></i></span>
        <span><i class="fas fa-wifi"></i></span>
        <span><i class="fas fa-bath"></i></span>
      </div>
      <h4>TWD <s>{{room.price}}</s> <span class="final-price">{{finalPrice}}</span></h4>
    </div>
  </div>
</template>

<script>
export default {
  name: 'RoomCard',
  props: {
    room: {
      type: Object,
      required: true
    },
    hotelDiscount: {
      type: Number,
      required: true
    },
    serviceFee: {
      type: Number,
      required: true
    },
    deleteRoom: {
      type: Function,
      required: true
    },
    id: {
      type: Number,
      required: true
    }
  },
  computed: {
    finalDiscount () {
      return this.room.discount * this.hotelDiscount
    },
    finalDiscountShow () {
      return parseInt(this.finalDiscount * 100)
    },
    finalPrice () {
      return parseInt(this.room.price * this.finalDiscount) + 1 * this.serviceFee
    },
    bgUrl () {
      return { 'background-image': "url('" + this.room.cover + "')" }
    }
  }
}
</script>

<style lang="scss" scoped>
.card {
  box-shadow: 0 0 10px rgba(0,0,0,0.3);
  &:hover{
    .cover {
      background-size: 230% auto;
    }
  }
  .cover{
    height: 250px;
    position: relative;
    background-position: center;
    background-repeat: no-repeat;
    background-size: 210% auto;
    transition: .5s;
    h3 {
      position: absolute;
      bottom: 20px;
      background-color: #fff;
      padding: 5px 10px;
    }
    .times {
      position: absolute;
      right: 15px;
      top: 10px;
      color: white;
      cursor: pointer;
      transition: .5s;
      &:hover {
        color: red;
      }
    }
  }
  .info {
    padding: 10px;
    h5 {
      display: inline-block;
    }
    .icons {
      display: inline-block;
      margin-left: 20px;
      span {
        margin-right: 5px;
        opacity: .6;
      }
    }
    .final-price {
      float: right;
      color: red;
      font-size: 24px;
      &:before {
        content: '$'
      }
    }
  }
}
</style>
