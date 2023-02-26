class Solution {
public:
    int numberOfSubarrays(vector<int>& nums, int k) {
        return solvefork(nums,k)-solvefork(nums,k-1);
    }

    int solvefork(vector<int>& nums, int k){
        int diff=0,j=0,ans=0,n=nums.size();
        for(int i=0;i<nums.size();i++){
            if(nums[i]%2){
                diff++;

            }
            if(diff<=k){
                ans+=i-j+1;
            }
            else{
                while(j<=n && j<=i && diff>k){
                    if(nums[j]%2){
                        diff--;
                    }
                    j++;
                }
                ans+=i-j+1;
                
            }
        }
        return ans;
    }
};
