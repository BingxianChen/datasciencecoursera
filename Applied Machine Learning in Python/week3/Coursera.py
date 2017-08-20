
precision, recall, thresholds = precision_recall_curve(y_test,m.decision_function(X_test))
plt.figure()
plt.xlim([0.0, 1.01])
plt.ylim([0.0, 1.01])
plt.plot(precision, recall, label='Precision-Recall Curve')
plt.show()

precision_score(y_test, m.predict(X_test), average = 'micro')

from sklearn.metrics import recall_score,precision_score
grid_values = {'gamma': [0.01, 0.1, 1, 10],'C':[0.01, 0.1, 1, 10]}
grid_SVM_acc = GridSearchCV(m, param_grid = grid_values,scoring='precision')
grid_SVM_acc.fit(X_train,y_train)
y_pred = grid_SVM_acc.predict(X_test)
a = recall_score(y_test,y_pred)
b = precision_score(y_test,y_pred)
print (b - a)