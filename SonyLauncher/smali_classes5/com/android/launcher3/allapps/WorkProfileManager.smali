.class public Lcom/android/launcher3/allapps/WorkProfileManager;
.super Ljava/lang/Object;
.source "WorkProfileManager.java"

# interfaces
.implements Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip$OnActivePageChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/allapps/WorkProfileManager$WorkProfileState;
    }
.end annotation


# static fields
.field public static final STATE_DISABLED:I = 0x2

.field public static final STATE_ENABLED:I = 0x1

.field public static final STATE_TRANSITION:I = 0x3

.field private static final TAG:Ljava/lang/String; = "WorkProfileManager"


# instance fields
.field private final mAdapterProvider:Lcom/android/launcher3/allapps/WorkAdapterProvider;

.field private final mAllApps:Lcom/android/launcher3/allapps/BaseAllAppsContainerView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<",
            "*>;"
        }
    .end annotation
.end field

.field private mCurrentState:I

.field private final mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

.field private final mMatcher:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserManager:Landroid/os/UserManager;

.field private mWorkModeSwitch:Lcom/android/launcher3/allapps/WorkModeSwitch;


# direct methods
.method public constructor <init>(Landroid/os/UserManager;Lcom/android/launcher3/allapps/BaseAllAppsContainerView;Landroid/content/SharedPreferences;Lcom/android/launcher3/DeviceProfile;)V
    .locals 2
    .param p1, "userManager"    # Landroid/os/UserManager;
    .param p3, "preferences"    # Landroid/content/SharedPreferences;
    .param p4, "deviceProfile"    # Lcom/android/launcher3/DeviceProfile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserManager;",
            "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<",
            "*>;",
            "Landroid/content/SharedPreferences;",
            "Lcom/android/launcher3/DeviceProfile;",
            ")V"
        }
    .end annotation

    .line 82
    .local p2, "allApps":Lcom/android/launcher3/allapps/BaseAllAppsContainerView;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/android/launcher3/allapps/WorkProfileManager;->mUserManager:Landroid/os/UserManager;

    .line 84
    iput-object p2, p0, Lcom/android/launcher3/allapps/WorkProfileManager;->mAllApps:Lcom/android/launcher3/allapps/BaseAllAppsContainerView;

    .line 85
    iput-object p4, p0, Lcom/android/launcher3/allapps/WorkProfileManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    .line 86
    new-instance v0, Lcom/android/launcher3/allapps/WorkAdapterProvider;

    iget-object v1, p2, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/views/ActivityContext;

    invoke-direct {v0, v1, p3}, Lcom/android/launcher3/allapps/WorkAdapterProvider;-><init>(Lcom/android/launcher3/views/ActivityContext;Landroid/content/SharedPreferences;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/WorkProfileManager;->mAdapterProvider:Lcom/android/launcher3/allapps/WorkAdapterProvider;

    .line 87
    iget-object v0, p2, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mPersonalMatcher:Ljava/util/function/Predicate;

    invoke-interface {v0}, Ljava/util/function/Predicate;->negate()Ljava/util/function/Predicate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/WorkProfileManager;->mMatcher:Ljava/util/function/Predicate;

    .line 88
    return-void
.end method

.method private getAH()Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<",
            "*>.AdapterHolder;"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/android/launcher3/allapps/WorkProfileManager;->mAllApps:Lcom/android/launcher3/allapps/BaseAllAppsContainerView;

    iget-object v0, v0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAH:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    return-object v0
.end method

.method private updateCurrentState(I)V
    .locals 2
    .param p1, "currentState"    # I

    .line 122
    iput p1, p0, Lcom/android/launcher3/allapps/WorkProfileManager;->mCurrentState:I

    .line 123
    iget-object v0, p0, Lcom/android/launcher3/allapps/WorkProfileManager;->mAdapterProvider:Lcom/android/launcher3/allapps/WorkAdapterProvider;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/WorkAdapterProvider;->updateCurrentState(I)V

    .line 124
    invoke-direct {p0}, Lcom/android/launcher3/allapps/WorkProfileManager;->getAH()Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 125
    invoke-direct {p0}, Lcom/android/launcher3/allapps/WorkProfileManager;->getAH()Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mAppsList:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->updateAdapterItems()V

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/WorkProfileManager;->mWorkModeSwitch:Lcom/android/launcher3/allapps/WorkModeSwitch;

    if-eqz v0, :cond_2

    .line 128
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/WorkModeSwitch;->updateCurrentState(Z)V

    .line 130
    :cond_2
    return-void
.end method


# virtual methods
.method public attachWorkModeSwitch()Z
    .locals 4

    .line 136
    iget-object v0, p0, Lcom/android/launcher3/allapps/WorkProfileManager;->mAllApps:Lcom/android/launcher3/allapps/BaseAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/AllAppsStore;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsStore;->hasModelFlag(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 138
    const-string v0, "WorkProfileManager"

    const-string v2, "unable to attach work mode switch; Missing required permissions"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return v1

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/WorkProfileManager;->mWorkModeSwitch:Lcom/android/launcher3/allapps/WorkModeSwitch;

    if-nez v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/android/launcher3/allapps/WorkProfileManager;->mAllApps:Lcom/android/launcher3/allapps/BaseAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/android/launcher3/R$layout;->work_mode_fab:I

    iget-object v3, p0, Lcom/android/launcher3/allapps/WorkProfileManager;->mAllApps:Lcom/android/launcher3/allapps/BaseAllAppsContainerView;

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/WorkModeSwitch;

    iput-object v0, p0, Lcom/android/launcher3/allapps/WorkProfileManager;->mWorkModeSwitch:Lcom/android/launcher3/allapps/WorkModeSwitch;

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/allapps/WorkProfileManager;->mWorkModeSwitch:Lcom/android/launcher3/allapps/WorkModeSwitch;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher3/allapps/WorkProfileManager;->mAllApps:Lcom/android/launcher3/allapps/BaseAllAppsContainerView;

    if-eq v0, v2, :cond_2

    .line 146
    iget-object v0, p0, Lcom/android/launcher3/allapps/WorkProfileManager;->mWorkModeSwitch:Lcom/android/launcher3/allapps/WorkModeSwitch;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->addView(Landroid/view/View;)V

    .line 148
    :cond_2
    invoke-direct {p0}, Lcom/android/launcher3/allapps/WorkProfileManager;->getAH()Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 149
    invoke-direct {p0}, Lcom/android/launcher3/allapps/WorkProfileManager;->getAH()Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->applyPadding()V

    .line 151
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/allapps/WorkProfileManager;->mWorkModeSwitch:Lcom/android/launcher3/allapps/WorkModeSwitch;

    iget v2, p0, Lcom/android/launcher3/allapps/WorkProfileManager;->mCurrentState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    move v1, v3

    :cond_4
    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/WorkModeSwitch;->updateCurrentState(Z)V

    .line 152
    return v3
.end method

.method public detachWorkModeSwitch()V
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/android/launcher3/allapps/WorkProfileManager;->mWorkModeSwitch:Lcom/android/launcher3/allapps/WorkModeSwitch;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/WorkProfileManager;->mAllApps:Lcom/android/launcher3/allapps/BaseAllAppsContainerView;

    if-ne v0, v1, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/launcher3/allapps/WorkProfileManager;->mWorkModeSwitch:Lcom/android/launcher3/allapps/WorkModeSwitch;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->removeView(Landroid/view/View;)V

    .line 161
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/allapps/WorkProfileManager;->mWorkModeSwitch:Lcom/android/launcher3/allapps/WorkModeSwitch;

    .line 162
    return-void
.end method

.method public getAdapterProvider()Lcom/android/launcher3/allapps/WorkAdapterProvider;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/android/launcher3/allapps/WorkProfileManager;->mAdapterProvider:Lcom/android/launcher3/allapps/WorkAdapterProvider;

    return-object v0
.end method

.method public getCurrentState()I
    .locals 1

    .line 182
    iget v0, p0, Lcom/android/launcher3/allapps/WorkProfileManager;->mCurrentState:I

    return v0
.end method

.method public getMatcher()Ljava/util/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/android/launcher3/allapps/WorkProfileManager;->mMatcher:Ljava/util/function/Predicate;

    return-object v0
.end method

.method public getWorkModeSwitch()Lcom/android/launcher3/allapps/WorkModeSwitch;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/android/launcher3/allapps/WorkProfileManager;->mWorkModeSwitch:Lcom/android/launcher3/allapps/WorkModeSwitch;

    return-object v0
.end method

.method synthetic lambda$setWorkProfileEnabled$0$com-android-launcher3-allapps-WorkProfileManager(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .line 97
    iget-object v0, p0, Lcom/android/launcher3/allapps/WorkProfileManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 98
    .local v1, "userProfile":Landroid/os/UserHandle;
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    goto :goto_0

    .line 101
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/allapps/WorkProfileManager;->mUserManager:Landroid/os/UserManager;

    xor-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3, v1}, Landroid/os/UserManager;->requestQuietModeEnabled(ZLandroid/os/UserHandle;)Z

    .line 102
    .end local v1    # "userProfile":Landroid/os/UserHandle;
    goto :goto_0

    .line 103
    :cond_1
    return-void
.end method

.method public onActivePageChanged(I)V
    .locals 1
    .param p1, "page"    # I

    .line 108
    iget-object v0, p0, Lcom/android/launcher3/allapps/WorkProfileManager;->mWorkModeSwitch:Lcom/android/launcher3/allapps/WorkModeSwitch;

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/WorkModeSwitch;->onActivePageChanged(I)V

    .line 111
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/android/launcher3/allapps/WorkProfileManager;->mAllApps:Lcom/android/launcher3/allapps/BaseAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/AllAppsStore;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsStore;->hasModelFlag(I)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    .line 118
    .local v0, "isEnabled":Z
    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    invoke-direct {p0, v1}, Lcom/android/launcher3/allapps/WorkProfileManager;->updateCurrentState(I)V

    .line 119
    return-void
.end method

.method public setWorkProfileEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 95
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/WorkProfileManager;->updateCurrentState(I)V

    .line 96
    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/allapps/WorkProfileManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/allapps/WorkProfileManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/allapps/WorkProfileManager;Z)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    .line 104
    return-void
.end method
