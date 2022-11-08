.class public final Lcom/android/quickstep/OverviewComponentObserver;
.super Ljava/lang/Object;
.source "OverviewComponentObserver.java"


# instance fields
.field private mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

.field private final mConfigChangesMap:Landroid/util/SparseIntArray;

.field private final mContext:Landroid/content/Context;

.field private final mCurrentHomeIntent:Landroid/content/Intent;

.field private final mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

.field private final mFallbackIntent:Landroid/content/Intent;

.field private mIsDefaultHome:Z

.field private mIsHomeAndOverviewSame:Z

.field private mIsHomeDisabled:Z

.field private final mMyHomeIntent:Landroid/content/Intent;

.field private final mOtherHomeAppUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private mOverviewChangeListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mOverviewIntent:Landroid/content/Intent;

.field private mUpdateRegisteredPackage:Ljava/lang/String;

.field private final mUserPreferenceChangeReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static synthetic $r8$lambda$ZHvBON2wUbzSNCxS2lkv_MLFFLk(Lcom/android/quickstep/OverviewComponentObserver;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/OverviewComponentObserver;->updateOverviewTargets(Landroid/content/Intent;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "deviceState"    # Lcom/android/quickstep/RecentsAnimationDeviceState;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    new-instance v1, Lcom/android/quickstep/OverviewComponentObserver$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/quickstep/OverviewComponentObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/quickstep/OverviewComponentObserver;)V

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/SimpleBroadcastReceiver;-><init>(Ljava/util/function/Consumer;)V

    iput-object v0, p0, Lcom/android/quickstep/OverviewComponentObserver;->mUserPreferenceChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 55
    new-instance v0, Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    new-instance v1, Lcom/android/quickstep/OverviewComponentObserver$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/quickstep/OverviewComponentObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/quickstep/OverviewComponentObserver;)V

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/SimpleBroadcastReceiver;-><init>(Ljava/util/function/Consumer;)V

    iput-object v0, p0, Lcom/android/quickstep/OverviewComponentObserver;->mOtherHomeAppUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 63
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/OverviewComponentObserver;->mConfigChangesMap:Landroid/util/SparseIntArray;

    .line 65
    new-instance v1, Lcom/android/quickstep/OverviewComponentObserver$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/quickstep/OverviewComponentObserver$$ExternalSyntheticLambda1;-><init>()V

    iput-object v1, p0, Lcom/android/quickstep/OverviewComponentObserver;->mOverviewChangeListener:Ljava/util/function/Consumer;

    .line 76
    iput-object p1, p0, Lcom/android/quickstep/OverviewComponentObserver;->mContext:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Lcom/android/quickstep/OverviewComponentObserver;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    .line 78
    invoke-static {}, Lcom/android/launcher3/Utilities;->createHomeIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/quickstep/OverviewComponentObserver;->mCurrentHomeIntent:Landroid/content/Intent;

    .line 79
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/quickstep/OverviewComponentObserver;->mMyHomeIntent:Landroid/content/Intent;

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 81
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    new-instance v4, Landroid/content/ComponentName;

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .local v4, "myHomeComponent":Landroid/content/ComponentName;
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 84
    invoke-virtual {v4}, Landroid/content/ComponentName;->hashCode()I

    move-result v1

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v5, v5, Landroid/content/pm/ActivityInfo;->configChanges:I

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->append(II)V

    .line 86
    new-instance v1, Landroid/content/ComponentName;

    const-class v5, Lcom/android/quickstep/RecentsActivity;

    invoke-direct {v1, p1, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    .local v1, "fallbackComponent":Landroid/content/ComponentName;
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    const-string v6, "android.intent.category.DEFAULT"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 89
    invoke-virtual {v5, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v5

    .line 90
    const/high16 v6, 0x10000000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v5

    iput-object v5, p0, Lcom/android/quickstep/OverviewComponentObserver;->mFallbackIntent:Landroid/content/Intent;

    .line 93
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 94
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    .line 93
    invoke-virtual {v6, v5, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 95
    .local v3, "fallbackInfo":Landroid/content/pm/ActivityInfo;
    invoke-virtual {v1}, Landroid/content/ComponentName;->hashCode()I

    move-result v5

    iget v6, v3, Landroid/content/pm/ActivityInfo;->configChanges:I

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseIntArray;->append(II)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "fallbackInfo":Landroid/content/pm/ActivityInfo;
    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    :goto_0
    nop

    .line 98
    iget-object v0, p0, Lcom/android/quickstep/OverviewComponentObserver;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/quickstep/OverviewComponentObserver;->mUserPreferenceChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.ACTION_PREFERRED_ACTIVITY_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 100
    invoke-direct {p0}, Lcom/android/quickstep/OverviewComponentObserver;->updateOverviewTargets()V

    .line 101
    return-void
.end method

.method static synthetic lambda$new$0(Ljava/lang/Boolean;)V
    .locals 0
    .param p0, "b"    # Ljava/lang/Boolean;

    .line 65
    return-void
.end method

.method private unregisterOtherHomeAppUpdateReceiver()V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/android/quickstep/OverviewComponentObserver;->mUpdateRegisteredPackage:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/quickstep/OverviewComponentObserver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/quickstep/OverviewComponentObserver;->mOtherHomeAppUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 196
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/OverviewComponentObserver;->mUpdateRegisteredPackage:Ljava/lang/String;

    .line 198
    :cond_0
    return-void
.end method

.method private updateOverviewTargets()V
    .locals 7

    .line 130
    invoke-static {}, Lcom/android/systemui/shared/system/PackageManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/PackageManagerWrapper;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 131
    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/PackageManagerWrapper;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v0

    .line 133
    .local v0, "defaultHome":Landroid/content/ComponentName;
    iget-object v1, p0, Lcom/android/quickstep/OverviewComponentObserver;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isHomeDisabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/quickstep/OverviewComponentObserver;->mIsHomeDisabled:Z

    .line 134
    iget-object v1, p0, Lcom/android/quickstep/OverviewComponentObserver;->mMyHomeIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/quickstep/OverviewComponentObserver;->mIsDefaultHome:Z

    .line 139
    iget-object v1, p0, Lcom/android/quickstep/OverviewComponentObserver;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    if-eqz v1, :cond_0

    .line 140
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/quickstep/BaseActivityInterface;->onAssistantVisibilityChanged(F)V

    .line 143
    :cond_0
    sget-object v1, Lcom/android/launcher3/config/FeatureFlags;->SEPARATE_RECENTS_ACTIVITY:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 144
    iput-boolean v2, p0, Lcom/android/quickstep/OverviewComponentObserver;->mIsDefaultHome:Z

    .line 145
    if-nez v0, :cond_1

    .line 146
    iget-object v1, p0, Lcom/android/quickstep/OverviewComponentObserver;->mMyHomeIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 150
    :cond_1
    iget-object v1, p0, Lcom/android/quickstep/OverviewComponentObserver;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isHomeDisabled()Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/android/quickstep/OverviewComponentObserver;->mIsDefaultHome:Z

    if-eqz v1, :cond_3

    .line 152
    :cond_2
    sget-object v1, Lcom/android/quickstep/LauncherActivityInterface;->INSTANCE:Lcom/android/quickstep/LauncherActivityInterface;

    iput-object v1, p0, Lcom/android/quickstep/OverviewComponentObserver;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    .line 153
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/quickstep/OverviewComponentObserver;->mIsHomeAndOverviewSame:Z

    .line 154
    iget-object v1, p0, Lcom/android/quickstep/OverviewComponentObserver;->mMyHomeIntent:Landroid/content/Intent;

    iput-object v1, p0, Lcom/android/quickstep/OverviewComponentObserver;->mOverviewIntent:Landroid/content/Intent;

    .line 155
    iget-object v2, p0, Lcom/android/quickstep/OverviewComponentObserver;->mCurrentHomeIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 158
    invoke-direct {p0}, Lcom/android/quickstep/OverviewComponentObserver;->unregisterOtherHomeAppUpdateReceiver()V

    goto :goto_0

    .line 162
    :cond_3
    sget-object v1, Lcom/android/quickstep/FallbackActivityInterface;->INSTANCE:Lcom/android/quickstep/FallbackActivityInterface;

    iput-object v1, p0, Lcom/android/quickstep/OverviewComponentObserver;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    .line 163
    iput-boolean v2, p0, Lcom/android/quickstep/OverviewComponentObserver;->mIsHomeAndOverviewSame:Z

    .line 164
    iget-object v1, p0, Lcom/android/quickstep/OverviewComponentObserver;->mFallbackIntent:Landroid/content/Intent;

    iput-object v1, p0, Lcom/android/quickstep/OverviewComponentObserver;->mOverviewIntent:Landroid/content/Intent;

    .line 165
    iget-object v1, p0, Lcom/android/quickstep/OverviewComponentObserver;->mCurrentHomeIntent:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 171
    if-nez v0, :cond_4

    .line 172
    invoke-direct {p0}, Lcom/android/quickstep/OverviewComponentObserver;->unregisterOtherHomeAppUpdateReceiver()V

    goto :goto_0

    .line 173
    :cond_4
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/quickstep/OverviewComponentObserver;->mUpdateRegisteredPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 174
    invoke-direct {p0}, Lcom/android/quickstep/OverviewComponentObserver;->unregisterOtherHomeAppUpdateReceiver()V

    .line 176
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/quickstep/OverviewComponentObserver;->mUpdateRegisteredPackage:Ljava/lang/String;

    .line 177
    iget-object v2, p0, Lcom/android/quickstep/OverviewComponentObserver;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/quickstep/OverviewComponentObserver;->mOtherHomeAppUpdateReceiver:Landroid/content/BroadcastReceiver;

    const-string v4, "android.intent.action.PACKAGE_ADDED"

    const-string v5, "android.intent.action.PACKAGE_CHANGED"

    const-string v6, "android.intent.action.PACKAGE_REMOVED"

    filled-new-array {v4, v5, v6}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/launcher3/util/PackageManagerHelper;->getPackageFilter(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 182
    :cond_5
    :goto_0
    iget-object v1, p0, Lcom/android/quickstep/OverviewComponentObserver;->mOverviewChangeListener:Ljava/util/function/Consumer;

    iget-boolean v2, p0, Lcom/android/quickstep/OverviewComponentObserver;->mIsHomeAndOverviewSame:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 183
    return-void
.end method

.method private updateOverviewTargets(Landroid/content/Intent;)V
    .locals 0
    .param p1, "unused"    # Landroid/content/Intent;

    .line 122
    invoke-direct {p0}, Lcom/android/quickstep/OverviewComponentObserver;->updateOverviewTargets()V

    .line 123
    return-void
.end method


# virtual methods
.method canHandleConfigChanges(Landroid/content/ComponentName;I)Z
    .locals 4
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "changes"    # I

    .line 204
    const/16 v0, 0x480

    .line 206
    .local v0, "orientationChange":I
    and-int/lit16 v1, p2, 0x480

    const/4 v2, 0x1

    const/16 v3, 0x480

    if-ne v1, v3, :cond_0

    .line 209
    return v2

    .line 212
    :cond_0
    iget-object v1, p0, Lcom/android/quickstep/OverviewComponentObserver;->mConfigChangesMap:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/content/ComponentName;->hashCode()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 213
    .local v1, "configMask":I
    if-eqz v1, :cond_1

    not-int v3, v1

    and-int/2addr v3, p2

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 259
    const-string v0, "OverviewComponentObserver:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isDefaultHome="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/quickstep/OverviewComponentObserver;->mIsDefaultHome:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isHomeDisabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/quickstep/OverviewComponentObserver;->mIsHomeDisabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  homeAndOverviewSame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/quickstep/OverviewComponentObserver;->mIsHomeAndOverviewSame:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  overviewIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/OverviewComponentObserver;->mOverviewIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  homeIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/OverviewComponentObserver;->mCurrentHomeIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 265
    return-void
.end method

.method public getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/android/quickstep/OverviewComponentObserver;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    return-object v0
.end method

.method public getHomeIntent()Landroid/content/Intent;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/android/quickstep/OverviewComponentObserver;->mCurrentHomeIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getOverviewIntent()Landroid/content/Intent;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/android/quickstep/OverviewComponentObserver;->mOverviewIntent:Landroid/content/Intent;

    return-object v0
.end method

.method getOverviewIntentIgnoreSysUiState()Landroid/content/Intent;
    .locals 1

    .line 223
    iget-boolean v0, p0, Lcom/android/quickstep/OverviewComponentObserver;->mIsDefaultHome:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/OverviewComponentObserver;->mMyHomeIntent:Landroid/content/Intent;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/OverviewComponentObserver;->mOverviewIntent:Landroid/content/Intent;

    :goto_0
    return-object v0
.end method

.method public isHomeAndOverviewSame()Z
    .locals 1

    .line 246
    iget-boolean v0, p0, Lcom/android/quickstep/OverviewComponentObserver;->mIsHomeAndOverviewSame:Z

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/android/quickstep/OverviewComponentObserver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/quickstep/OverviewComponentObserver;->mUserPreferenceChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 190
    invoke-direct {p0}, Lcom/android/quickstep/OverviewComponentObserver;->unregisterOtherHomeAppUpdateReceiver()V

    .line 191
    return-void
.end method

.method public onSystemUiStateChanged()V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/android/quickstep/OverviewComponentObserver;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isHomeDisabled()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/quickstep/OverviewComponentObserver;->mIsHomeDisabled:Z

    if-eq v0, v1, :cond_0

    .line 112
    invoke-direct {p0}, Lcom/android/quickstep/OverviewComponentObserver;->updateOverviewTargets()V

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/OverviewComponentObserver;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isOneHandedModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/android/quickstep/OverviewComponentObserver;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    iget-object v1, p0, Lcom/android/quickstep/OverviewComponentObserver;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isOneHandedModeActive()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/BaseActivityInterface;->onOneHandedModeStateChanged(Z)V

    .line 119
    :cond_1
    return-void
.end method

.method public setOverviewChangeListener(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 107
    .local p1, "overviewChangeListener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    iput-object p1, p0, Lcom/android/quickstep/OverviewComponentObserver;->mOverviewChangeListener:Ljava/util/function/Consumer;

    .line 108
    return-void
.end method

.method public writeToProto(Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;)V
    .locals 2
    .param p1, "serviceProto"    # Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;

    .line 274
    invoke-static {}, Lcom/android/launcher3/tracing/OverviewComponentObserverProto;->newBuilder()Lcom/android/launcher3/tracing/OverviewComponentObserverProto$Builder;

    move-result-object v0

    .line 275
    .local v0, "overviewComponentObserver":Lcom/android/launcher3/tracing/OverviewComponentObserverProto$Builder;
    iget-object v1, p0, Lcom/android/quickstep/OverviewComponentObserver;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {v1}, Lcom/android/quickstep/BaseActivityInterface;->isStarted()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/tracing/OverviewComponentObserverProto$Builder;->setOverviewActivityStarted(Z)Lcom/android/launcher3/tracing/OverviewComponentObserverProto$Builder;

    .line 276
    iget-object v1, p0, Lcom/android/quickstep/OverviewComponentObserver;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {v1}, Lcom/android/quickstep/BaseActivityInterface;->isResumed()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/tracing/OverviewComponentObserverProto$Builder;->setOverviewActivityResumed(Z)Lcom/android/launcher3/tracing/OverviewComponentObserverProto$Builder;

    .line 277
    invoke-virtual {p1, v0}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;->setOverviewComponentObvserver(Lcom/android/launcher3/tracing/OverviewComponentObserverProto$Builder;)Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;

    .line 278
    return-void
.end method
