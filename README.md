# 初めてのサーバレス
GolangとServerlessフレームワークを使ったチュートリアルを行います。

# 技術
* AWS(lambda)
* serverless
* go(v1.16.4)
	* `aws-go-mod`使用

# プロジェクト作成

```bash
serverless create -t aws-go-mod
```
# Docker
```bash
export AWS_ACCESS_KEY_ID=$(aws --profile default configure get aws_access_key_id)
export AWS_SECRET_ACCESS_KEY=$(aws --profile default configure get aws_secret_access_key)
```

# 参考
## プロジェクト作成
https://www.serverless.com/blog/framework-example-golang-lambda-support/
## Docker化
https://qiita.com/kai_kou/items/fc3eab987d7ed2d6f65b
