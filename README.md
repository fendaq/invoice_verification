# 发票验真

从各省市国税/地税局网站抓取发票验证信息，进行发票真伪验证.

为了项目部署方便， 采用 jRuby(9.0.1.0) + warbler(2.0.0.rc1)

** warbler 默认所有 .rb 在 lib 文件夹下 **

** 验证码信息也是从原网站抓取 **

# TODO

1. 辽宁国税/地税
2. 北京国税/地税
3. 测试

# Known Issues

1. 有些网站验证码刷得很慢，异步抓取又怕时间太久验证码超时

# Gems

* Mechanize/Nokogiri
* Cuba
* warbler