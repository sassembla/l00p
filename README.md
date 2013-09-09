#L00p.sh

Jenkinsさんを無理なくn回走らせて任意の値を集めるshell

##Motivation
JenkinsさんのJobを特定回数連続で走らせる機構が欲しかった。


##Usage
プロジェクトにL00p.shを含み、shellとして実行すると、そのbuildから数えてn回連続で動く。

	sh l00p.sh count.txt http://SOMEWHERE_MR_JENKINS_LIVES/Job/JOBNAME/build 100
	
これで、100回JOBNAMEというjobが走る。

##parameter detail

**output file**

	count.txt
		プロジェクト中に出力されるカウントファイル、ここに動作記録が書き込まれる	 


**Jenkins remote build path**

	http://SOMEWHERE_MR_JENKINS_LIVES/Job/JOBNAME/build 
		JenkinsのJobのパス
		Tokenとか有る場合は書き足せば動くんじゃないか
		
		
**回数**
	
	100
		指定回数ぶん連続で動く	