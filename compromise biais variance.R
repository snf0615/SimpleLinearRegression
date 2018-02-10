my_kppv <- fonction(Xtest,k,Xapp,yapp)
{
	n_Xtest = 1
	n_k = 1
	for i in Xtest
	{
		f_chapeau[n_Xtest] = 0
		sort_order = order(Xapp-i)
		for j in sort_order
		{
			if (n_k <= k)
			{
				#yapp[j]=1+5*Xapp[j]*Xapp[j]+rnorm(1,0,0.5)
				f_chapeau[n_Xtest] = f_chapeau[n_Xtest]+yapp[j]
				n_k = n_k + 1
			}
		}
		f_chapeau[n_Xtest]＝f_chapeau[n_Xtest]/k
		n_Xtest=n_Xtest+1
	}
	return f_chapeau
}/Users/SNF/Google 云端硬盘/P2016/SY09/TP0/mes-fonctions.R