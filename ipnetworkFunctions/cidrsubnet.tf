// 计算子网

# cidrsubnet计算方法

# cidrsubnet("10.0.0.0/16",2,2)

# 首先掩码移动2位是18，我们知道IP的地址段实际上是4段
# xxxxxxxx.xxxxxxxx.xxxxxxxx.xxxxxxxx
# 当移动2位之后，当前的验码段就变成了
# xxxxxxxx.xxxxxxxx.xx|xxxxxx.xxxxxxxx
# 所以此时我们划分的网段就在第三段，那么我们的IP地址也就是
# 10.0.n.0/18
# 那这个n的值是什么呢，实际上就是我们的n = netnum * 2^6=2 * 64 = 128
# 那么我们此时用cidrsubnet计算出来的网段就是
# 10.0.128.0/18

# 我们再来一个例子巩固一下
# cidrsubnet("10.0.0.0/24",3,2)
# 24位移动3位就是27，属于第4段
# 10.0.0.n/27
# 第4段的主机地址是2^5，我们要第二个就乘以2
# n = 2 * 2^5 = 2 * 32 = 64
# 10.0.0.64/27

locals {
  cidrsubnetValue = cidrsubnet("10.0.0.0/16", 2, 2)
}
