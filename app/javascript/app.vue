<template>
  <div>
    <div id="welcome">
      <header>
        <div class="container-header">
          <div class="row" style="background-color: #f1e7c9;">
            <div class="col-xs-5">
              <div class="logo"></div>
            </div>
            <div class="col-xs-7" style="padding-top: 100px">
              <h1><span class="font">買好設備打code去！</span></h1>
              <h3>我們不打柯基(Corgi)，我們『打code去(台語)』</h3>
              <h3 class="text-center">
                <span v-show="!current_user">
                  立即
                  <a href="/users/sign_up">注册</a> /
                  <a href="/users/sign_in">登入</a>
                  後成為Pakogi的一員！
                </span>
                <div>
                  <a href="/products">
                    <button class="btn btn-lg btn-goProducts">立即逛商店</button>
                  </a>
                </div>
              </h3>
            </div>
          </div>
        </div>
      </header>

      <section class="section-intro">
        <h3 class="text-center section-title"><span class="font--pale">找尋最好的設備Pakogi！</span></h3>
        <div class="container">
          <div class="row text-center">
            <div class="col-sm-4">
              <img src="/macs.jpg" class="images images-intro">
              <h4 class="font font--pale">先利其器</h4>
              <p class="font font--pale">電腦平板一應俱全</p>
              <p class="font font--pale">下單即可以開始開發</p>
            </div>
            <div class="col-sm-4">
              <img src="/earphones.jpg" class="images images-intro">
              <h4 class="font font--pale">如虎添翼</h4>
              <p class="font font--pale">從硬體輸入到耳機椅子</p>
              <p class="font font--pale">讓自己能更長效的戰鬥</p>
            </div>
            <div class="col-sm-4">
              <img src="/groot.jpeg" class="images images-intro">
              <h4 class="font font--pale">建立環境</h4>
              <p class="font font--pale">公仔與辦公室擺設</p>
              <p class="font font--pale">建立屬於自己的生活風格</p>
            </div>
          </div>
        </div>
      </section>

      <section class="section section-popProducts">
        <center>
          <h3 class="text-center section-title "><span class="font--pale">我們向您推薦</span></h3>
        </center>
        <div class="container container-popProdcuts">
          <div class="row">
            <div v-for="product in products">
              <a :href="'/products/' + product.slug">
                <div class="col-md-3 col-sm-6">
                  <div class="thumbnail">
                    <img :src="product.image.medium.url">
                    <div class="caption">
                      <span class="text-left font--productScores">＄{{ product.price }}</span>
                      <span class="text-right font--productScores">點擊率{{ product.click_rate }}</span>
                    </div>
                  </div>
                </div>
              </a>
            </div>
          </div>
        </div>
        <center>
          <a href="/products">
            <button class="btn btn-lg btn-goProducts">找尋更豐富的產品</button>
          </a>
        </center>
      </section>
    </div>
  </div>
</template>

<script>
export default {
  props: ["products", "current_user"],
  data: function () {
    return {
      message: "Hello Vue!"
    }
  }
}
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>
