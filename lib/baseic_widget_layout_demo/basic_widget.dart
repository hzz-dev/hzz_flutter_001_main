import 'package:flutter/material.dart';

class BasicWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ContainerDemo();
  }
}

class ContainerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      // color: Colors.greenAccent,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1606977153181&di=c72c1fe0adf542cae9cffef0c05e47fa&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201810%2F28%2F20181028215749_GLuHa.jpeg'),
          alignment: Alignment.topCenter,
          // 图片重复显示
          repeat: ImageRepeat.repeatY,
          // 图片充满全屏
          // fit: BoxFit.cover,
          // 图片添加滤镜
          colorFilter: ColorFilter.mode(
            Colors.indigoAccent[400].withOpacity(0.5),
            BlendMode.hardLight,
          ),
        ),
      ),
      // Container只有一个child属性
      // Row 可以有多个children
      child: Row(
        // 整体主轴对其方式
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Icon(Icons.pool, size: 32.0, color: Colors.white),
            // color: Color.fromRGBO(3, 54, 255, 1.0),
            padding: EdgeInsets.all(8.0),
            margin: EdgeInsets.only(left: 8.0),
            width: 90.0,
            height: 90.0,
            // 设置盒子上面的装饰
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 54, 255, 1.0),
              border: Border.all(
                color: Colors.indigoAccent[100],
                width: 3.0,
                style: BorderStyle.solid,
              ),
              // borderRadius: BorderRadius.circular(16.0),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0.0, 16.0),
                  color: Color.fromRGBO(16, 20, 188, 1.0),
                  blurRadius: 25.0,
                  spreadRadius: -9.0,
                ),
              ],
              // 设置容器形状
              shape: BoxShape.circle,

              /*gradient渐变 镜像渐变 */
              // gradient: RadialGradient(
              //   colors: [
              //     Color.fromRGBO(7, 102, 255, 1.0),
              //     Color.fromRGBO(3, 28, 128, 1.0),
              //   ],
              // ),

              /*gradient渐变 线性渐变 */
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(7, 102, 255, 1.0),
                  Color.fromRGBO(3, 28, 128, 1.0),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          )
        ],
      ),
    );
  }
}

// Container容器

// Text行内多样式
class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RichText(
        text: TextSpan(
      text: '我是歌手,你呢?',
      style: TextStyle(
        color: Colors.deepOrangeAccent,
        fontSize: 20.0,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.w100,
      ),
      children: [
        TextSpan(
            text: '我是样式1',
            style: TextStyle(
              color: Colors.pinkAccent,
              fontSize: 30.0,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.bold,
            ))
      ],
    ));
  }
}

// Text样式
class TextDemo extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(
    fontSize: 14.0,
  );

  final String _author = '太平洋汽车网';
  final String _title = '奥迪R8 RWD Panther Edition官图 限量30台';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Text(
        // 字符串中添加变量
        '《 $_title 》- $_author\n日前，奥迪官方发布了R8 RWD Panther Edition的官图。该车为R8的特别版车型，增加了专属的细节，搭载5.2L V10发动机，该车限量30台。',
        textAlign: TextAlign.left,
        style: _textStyle,
        /*设置最大显示行数,多余的显示... */
        // maxLines: 3,
        // overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
