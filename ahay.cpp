#include <bits/stdc++.h>

using namespace std;

int main (){
    int n;
    cin >> n;
    int a[n+5];
    for (int i=1;i<=n;i++) {
        cin >> a[i];
    }
    bool isMember[1005];
    for (int i=1;i<=1000;i++) isMember[i]=0;
    for (int i=1;i<=n;i++) {
        isMember[a[i]]=1;
    }
    set<int> cnt;
    for (int i=1;i<=1000;i++) {
        if (isMember[i]) {
            cnt.insert(i);
        }
    }
    vector<int> ans;
    for (int i=n;i>=1;i--) {
        if (isMember[a[i]]) {
            ans.push_back(a[i]);
            isMember[a[i]]=0;
        }
    }
    cout << cnt.size() << endl;
    for (int i=ans.size()-1;i>=0;i--) cout << ans[i] << " ";
    return 0;
}