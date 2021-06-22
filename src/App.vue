<template>
<div class="container-fluid">
  <div class="row">
    <div class="col-2">
      <h3>房間資料</h3>
      <hr/>
      <div class="edit-table">
        <div class="form-input">
          <label for="discount" class="label">折價</label>
          <input type="text" id="discount" class="form-control" v-model="hotelDiscount">
        </div>
        <div class="form-input">
          <label for="serviceFee" class="label">服務費</label>
          <input type="text" id="serviceFee" class="form-control" v-model="serviceFee">
        </div>
        <h4>房間編輯</h4>
        <select class='form-control form-select' v-model="editId">
          <option v-for="(room, id) in rooms" :value="id" :key="id">{{room.name}}</option>
        </select>
        <br/>
        <div class="btn btn-primary" @click="addRoom">+ 新增房間</div>
        <hr/>
        <div v-for="(room, id) in [rooms[editId]]" :key="id" class="room-edit">
          <h4>{{room.name}}<span class="trash" @click="deleteRoom(editId)"><i class="fas fa-trash"></i></span></h4>
          <div class="form-input">
            <label for="roomName" class="label">房間名稱</label>
            <input type="text" id="roomName" class="form-control" v-model="room.name">
          </div>
          <div class="form-input">
            <label for="roomEng" class="label">英文名稱</label>
            <input type="text" id="roomEng" class="form-control" v-model="room.eng">
          </div>
          <div class="form-input">
            <label for="roomPrice" class="label">房間價格</label>
            <input type="text" id="roomPrice" class="form-control" v-model="room.price">
          </div>
          <div class="form-input">
            <label for="roomDiscount" class="label">房間折扣</label>
            <input type="text" id="roomDiscount" class="form-control" v-model="room.discount">
          </div>
          <div class="form-input">
            <label for="roomCover" class="label">房間連結</label>
            <input type="text" id="roomCover" class="form-control" v-model="room.cover">
          </div>
          <div class="form-input">
            <label class="label">房間設備</label>
            <div class="checkbox">
              <input type="checkbox" id="coffee" v-model="room.equipment.coffee"><label for="coffee">早餐</label>
              <input type="checkbox" id="wifi" v-model="room.equipment.wifi"><label for="wifi">Wifi</label>
              <input type="checkbox" id="bath" v-model="room.equipment.bath"><label for="bath">浴缸</label>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-10">
      <h3>房間列表</h3>
      <hr/>
      <div class="row room-table">
        <div class="col-3" v-for="(room,id) in rooms" :key="id">
          <RoomCard :room="room" :hotelDiscount="hotelDiscount" :serviceFee="serviceFee" :deleteRoom="deleteRoom" :id="id"/>
        </div>
      </div>
    </div>
  </div>
</div>
</template>

<script>
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
      bath: true,
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
      bath: true,
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
      bath: true,
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
      bath: true,
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
      bath: true,
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
      bath: true,
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
      bath: true,
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
      bath: true,
      coffee: true
    }
  }
]
export default {
  name: 'App',
  components: {
    RoomCard
  },
  data () {
    return {
      rooms: rooms,
      hotelDiscount: 0.9,
      serviceFee: 200,
      editId: 0
    }
  },
  methods: {
    addRoom () {
      this.rooms.push({
        name: '新房間',
        eng: 'New Room',
        price: 0,
        amount: 0,
        cover: '',
        discount: 0,
        equipment: {
          wifi: false,
          bath: false,
          coffee: false
        }
      })
      this.editId = this.rooms.length - 1
    },
    deleteRoom (id) {
      console.log(id)
      this.rooms.splice(id, 1)
    }
  }
}
</script>

<style lang="scss">
.room-table {
  height: 100vh;
  overflow-y: scroll;
  padding-bottom: 100px;
}
.edit-table {
  padding-right: 10px;
  .room-edit {
    h4 {
      position: relative;
      .trash {
        position: absolute;
        right: 15px;
        cursor: pointer;
        transition: .5s;
        &:hover {
          color: red;
        }
      }
    }
  }
}
.form-input {
  margin: 10px auto;
  .label {
    font-size: 20px;
    margin-bottom: 10px;
  }
}
</style>
