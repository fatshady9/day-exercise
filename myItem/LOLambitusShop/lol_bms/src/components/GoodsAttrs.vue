<template>
  <div class="goods_attrs">
    <el-breadcrumb separator-class="el-icon-arrow-right">
      <el-breadcrumb-item :to="{ path: '/' }">首页</el-breadcrumb-item>
      <el-breadcrumb-item>商品管理</el-breadcrumb-item>
      <el-breadcrumb-item>商品属性</el-breadcrumb-item>
    </el-breadcrumb>
    <el-card>
      <div>
        <el-input
          style="width:300px"
          placeholder="请输入内容"
          v-model="search"
          class="input-with-select"
        >
          <el-button slot="append" icon="el-icon-search" @click="getGoodsList"></el-button>
        </el-input>
      </div>
      <el-table :data="goodsList" style="width: 100%">
        <el-table-column type="index"></el-table-column>
        <el-table-column prop="goods_name" label="商品名称"></el-table-column>
        <!-- <el-table-column type="expand">
          <template slot-scope="scoped">{{scoped.row.inventoryList}}</template>
        </el-table-column>-->
        <el-table-column prop="property" label="拥有属性" width="1400">
          <template slot-scope="scoped">
            <!-- scoped.row - 商品 -->
            <!-- item - 属性 -->
            <!-- item2 - 属性值 -->
            <!-- 属性框Popover -->
            <el-popover
              placement="right"
              trigger="hover"
              v-for="item in scoped.row.propList"
              :key="item.id"
            >
              <!-- 属性框 -->
              <el-tag
                type="promary"
                style="margin-right:10px"
                slot="reference"
                closable
                @close="delProp(item)"
              >{{ item.property_name }}</el-tag>
              <!-- 属性值框 -->
              <el-tag
                type="warning"
                v-for="item2 in item.attrList"
                :key="item2.id"
                style="margin-right:10px"
                closable
                @close="delProp(item)"
              >{{ item2.name }}</el-tag>
              <!-- 添加属性值 -->
              <el-input
                class="input-new-tag"
                v-if="item.addAttrVisible"
                v-model="addAttrValue"
                ref="saveTagInput"
                size="small"
                @keyup.enter.native="addAttr(item)"
                @blur="addAttr(item)"
              ></el-input>
              <el-button
                v-else
                class="button-new-tag"
                size="small"
                @click="item.addAttrVisible = true"
              >+ New</el-button>
            </el-popover>
            <!-- 添加属性 -->
            <el-input
              class="input-new-tag"
              v-if="scoped.row.addPropVisible"
              v-model="addPropValue"
              ref="saveTagInput"
              size="small"
              @keyup.enter.native="addProp(scoped.row)"
              @blur="addProp(scoped.row)"
            ></el-input>
            <el-button
              v-else-if="scoped.row.propList.length < 2"
              class="button-new-tag"
              size="small"
              @click="scoped.row.addPropVisible = true"
            >+ New</el-button>
          </template>
        </el-table-column>
      </el-table>
      <div class="block">
        <el-pagination
          background
          @size-change="sizeChange"
          @current-change="currentChange"
          :current-page="pagenum"
          :page-size="pagesize"
          :page-sizes="[2, 5, 10, 20]"
          layout="total, sizes, prev, pager, next, jumper"
          :total="total"
        ></el-pagination>
      </div>
    </el-card>
  </div>
</template>

<script>
export default {
  data() {
    return {
      goodsList: [],
      pagenum: 1,
      pagesize: 5,
      search: "",
      total: 0,
      addPropValue: "",
      addAttrValue: ""
    };
  },
  methods: {
    // 分页
    sizeChange(size) {
      window.console.log(size);
      this.pagesize = size;
      this.pagenum = 1;
      this.getGoodsList();
    },
    currentChange(num) {
      this.pagenum = num;
      this.getGoodsList();
    },
    // 获取列表
    async getGoodsList() {
      let queryInfo = {
        pagenum: this.pagenum,
        pagesize: this.pagesize,
        search: this.search
      };
      let { data: res } = await this.$http.get("/goods/attrs", {
        params: {
          pagenum: queryInfo.pagenum,
          pagesize: queryInfo.pagesize,
          search: queryInfo.search
        }
      });
      window.console.log(res);
      if (res.status !== 200) return this.$message.error("获取商品信息失败");
      res.goodsList.forEach(item => {
        // 属性列表
        item.propList = [];
        item.addPropVisible = false;
        res.propList.forEach(item2 => {
          // 属性的属性值列表
          item2.attrList = [];
          item2.addAttrVisible = false;
          res.attrList.forEach(item3 => {
            // 属性值(item3)列表添加到属性(item2)
            if (item3.property_id === item2.id) {
              item2.attrList.push(item3);
            }
          });
          // 属性(item2)列表添加到商品(item)
          if (item2.goods_id === item.id) {
            item.propList.push(item2);
          }
        });
        // 库存列表
        item.inventoryList = [];
        res.inventoryList.forEach(item2 => {
          if (item2.goods_id === item.id) {
            item.inventoryList.push(item2);
          }
        });
      });
      this.goodsList = res.goodsList;
      this.total = res.goods_total;
    },
    // 给商品添加属性 (prop)
    async addProp(good) {
      if (!this.addPropValue) {
        good.addPropVisible = false;
        return false;
      }
      let { data: res } = await this.$http.post("/addprop", {
        goods_id: good.id,
        property_name: this.addPropValue
      });
      if (res.code === 200) {
        this.addPropValue = "";
        this.$message.success("添加属性成功");
        this.getGoodsList();
      } else {
        this.$message.error("添加属性失败");
      }
    },
    // 删除商品属性 (prop)
    async delProp(prop) {
      let { data: res } = await this.$http.get("/delprop", {
        params: {
          prop_id: prop.id
        }
      });
      if (res.code === 200) {
        this.$message.success("删除属性成功");
        this.getGoodsList();
      } else {
        this.$message.error(res.meta);
      }
    },
    // 给商品添加属性值 (attr)
    async addAttr(prop) {
      if (!this.addAttrValue) {
        prop.addAttrVisible = false;
        return false;
      }
      let { data: res } = await this.$http.post("/addattr", {
        goods_id: prop.goods_id,
        name: this.addAttrValue,
        property_id: prop.id
      });
      if (res.code === 200) {
        this.addAttrValue = "";
        this.$message.success("添加属性成功");
        this.getGoodsList();
      } else {
        this.$message.error("添加属性失败");
      }
    },
    // 删除商品属性值 (attr)
    async delAttr(attr) {
      let { data: res } = await this.$http.get("/delattr", {
        params: {
          attr_id: attr.id
        }
      });
      if (res.code === 200) {
        this.$message.success("删除属性成功");
        this.getGoodsList();
      } else {
        this.$message.error(res.meta);
      }
    }
  },
  created() {
    this.getGoodsList();
  }
};
</script>

<style scoped lang="less">
.el-card {
  margin-top: 20px;
}
.block {
  margin-top: 20px;
}
</style>

<style>
html,body,.el-main {
  height: 100%;
}
.button-new-tag {
  height: 32px;
  line-height: 30px;
  padding-top: 0;
  padding-bottom: 0;
}
.input-new-tag {
  width: 90px;
  vertical-align: bottom;
}
</style>
