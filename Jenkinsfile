pipeline {
    agent {
        // 此处设定构建环境，目前可选有
        // java-8,python-2.7,python-3.5,build-essential,ruby-2.3,go-1.7,node-10
        label "node-10"
    }
    stages  {
        
        stage("检出") {
            steps {
                sh 'ci-init'
                checkout(
                  [$class: 'GitSCM', branches: [[name: env.GIT_BUILD_REF]], 
                  userRemoteConfigs: [[url: env.GIT_REPO_URL]]]
                )
            }
        }
      
      	stage("安装") {
            steps {
                /*
              	echo "查看当前所有文件"
                sh 'ls'
                echo "查看npm源"
              	sh 'npm config get registry'
              	echo "查看npm源"
              	sh 'npm config get registry'
                */
          
                echo "切换npm源"
                sh 'npm config set registry https://registry.npm.taobao.org'
                echo "安装全局gulp"
                sh 'npm install --global gulp'
                echo "安装全局yuque-hexo"
                sh 'npm install --global yuque-hexo'
                //echo "安装Hexo"
                //sh 'npm install hexo-cli -g'
                echo "安装"
                sh 'npm install'
            }
        }
        
        stage("部署") {
            steps {
                echo "clean语雀的缓存"
                sh 'yuque-hexo clean'
                echo "pull语雀文章"
                sh 'yuque-hexo sync'
                echo "部署中..."
                sh 'gulp d'
              	//sh 'hexo clean'
              	//sh 'hexo g'
                //sh 'hexo d'
                echo "部署完成"
            }
        }
    }
}