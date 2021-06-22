<template>
<div class="container-fluid">
  <div class="row">
    <div class="col-3">
      <h3>房間資料</h3>
      <hr/>
      <RoomEdit />
    </div>
    <div class="col-9">
      <h3>房間列表</h3>
      <hr/>
      <div class="row">
        <div class="col-3" v-for="(room,id) in rooms" :key="id">
          <RoomCard :room="room" :hotelDiscount="hotelDiscount"/>
        </div>
      </div>
    </div>
  </div>
</div>
</template>

<script>
import RoomEdit from '@/components/RoomEdit'
import RoomCard from '@/components/RoomCard'
const rooms = [
  {
    name: '精緻客房',
    eng: 'Superior Room',
    price: 9000,
    amount: 0,
    cover:
      'https://taipei.caesarpark.com.tw/upload/room_album_list/twL_room_album_20L03_ikxhd9nh3d.jpg',
    discount: 0.9,
    equipment: {
      wifi: true,
      bathtub: true,
      coffee: true
    }
  },
  {
    name: '精緻四人房',
    eng: 'Superior Double Room',
    price: 12000,
    amount: 0,
    cover:
      'https://taipei.caesarpark.com.tw/upload/room_album_list/twL_room_album_20K10_mjs3dxrjxi.jpg',
    discount: 0.8,
    equipment: {
      wifi: true,
      bathtub: true,
      coffee: true
    }
  },
  {
    name: '豪華客房',
    eng: 'Deluxe Room',
    price: 10000,
    amount: 0,
    cover:
      'https://taipei.caesarpark.com.tw/upload/room_album_list/twL_room_album_20K04_6ecbr2sz4z.jpg',
    discount: 0.9,
    equipment: {
      wifi: true,
      bathtub: true,
      coffee: true
    }
  },
  {
    name: '雅緻客房',
    eng: 'Premier Room',
    price: 14000,
    amount: 0,
    cover:
      'https://taipei.caesarpark.com.tw/upload/room_album_list/twL_room_album_20L03_ci5cn8pph2.jpg',
    discount: 0.9,
    equipment: {
      wifi: true,
      bathtub: true,
      coffee: true
    }
  },
  {
    name: '雅緻四人房',
    eng: 'Premier Double Room',
    price: 16000,
    amount: 0,
    cover:
      'https://taipei.caesarpark.com.tw/upload/room_album_list/twL_room_album_20K10_kxb5p5qxac.jpg',
    discount: 0.9,
    equipment: {
      wifi: true,
      bathtub: true,
      coffee: true
    }
  },
  {
    name: '悠遊客房',
    eng: 'Metro Room',
    price: 13000,
    amount: 0,
    cover:
      'https://taipei.caesarpark.com.tw/upload/room_album_list/twL_room_album_20K04_qai7egru7c.jpg',
    discount: 0.9,
    equipment: {
      wifi: true,
      bathtub: true,
      coffee: true
    }
  },
  {
    name: '綺幻客房',
    eng: 'Metropolis Room',
    price: 14000,
    amount: 0,
    cover:
      'https://taipei.caesarpark.com.tw/upload/room_album_list/twL_room_album_20K04_mmgium6ig6.jpg',
    discount: 0.9,
    equipment: {
      wifi: true,
      bathtub: true,
      coffee: true
    }
  },
  {
    name: '站前套房',
    eng: 'Station Suite',
    price: 18000,
    amount: 0,
    cover:
      'https://taipei.caesarpark.com.tw/upload/room_album_list/twL_room_album_20K04_3faaxx9xa6.jpg',
    discount: 0.9,
    equipment: {
      wifi: true,
      bathtub: true,
      coffee: true
    }
  }
]
export default {
  name: 'App',
  components: {
    RoomEdit,
    RoomCard
  },
  data () {
    return {
      rooms: rooms,
      hotelDiscount: 0.9
    }
  }
}
</script>

<style lang="scss">
</style>
