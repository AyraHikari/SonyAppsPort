.class public final Lcom/android/quickstep/TaskUtils;
.super Ljava/lang/Object;
.source "TaskUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TaskUtils"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkCurrentOrManagedUserId(ILandroid/content/Context;)Z
    .locals 4
    .param p0, "currentUserId"    # I
    .param p1, "context"    # Landroid/content/Context;

    .line 81
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/4 v1, 0x1

    if-ne p0, v0, :cond_0

    .line 82
    return v1

    .line 84
    :cond_0
    sget-object v0, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/pm/UserCache;

    invoke-virtual {v0}, Lcom/android/launcher3/pm/UserCache;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    .line 85
    .local v0, "allUsers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 86
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    if-ne p0, v3, :cond_1

    .line 87
    return v1

    .line 85
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 90
    .end local v2    # "i":I
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public static closeSystemWindowsAsync(Ljava/lang/String;)V
    .locals 2
    .param p0, "reason"    # Ljava/lang/String;

    .line 97
    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/quickstep/TaskUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/quickstep/TaskUtils$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 99
    return-void
.end method

.method public static getLaunchComponentKeyForTask(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Lcom/android/launcher3/util/ComponentKey;
    .locals 3
    .param p0, "taskKey"    # Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    .line 63
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->sourceComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->sourceComponent:Landroid/content/ComponentName;

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    :goto_0
    nop

    .line 66
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v1, Lcom/android/launcher3/util/ComponentKey;

    iget v2, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    return-object v1
.end method

.method public static getTitle(Landroid/content/Context;Lcom/android/systemui/shared/recents/model/Task;)Ljava/lang/CharSequence;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "task"    # Lcom/android/systemui/shared/recents/model/Task;

    .line 50
    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 51
    .local v0, "user":Landroid/os/UserHandle;
    new-instance v1, Lcom/android/launcher3/util/PackageManagerHelper;

    invoke-direct {v1, p0}, Lcom/android/launcher3/util/PackageManagerHelper;-><init>(Landroid/content/Context;)V

    .line 52
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task;->getTopComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/launcher3/util/PackageManagerHelper;->getApplicationInfo(Ljava/lang/String;Landroid/os/UserHandle;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 53
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v1, :cond_0

    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get title for task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TaskUtils"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const-string v2, ""

    return-object v2

    .line 57
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 58
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    nop

    .line 59
    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 58
    invoke-virtual {v2, v3, v0}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v3

    return-object v3
.end method

.method static synthetic lambda$closeSystemWindowsAsync$0(Ljava/lang/String;)V
    .locals 1
    .param p0, "reason"    # Ljava/lang/String;

    .line 98
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->closeSystemWindows(Ljava/lang/String;)V

    return-void
.end method

.method public static taskIsATargetWithMode([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;II)Z
    .locals 5
    .param p0, "targets"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p1, "taskId"    # I
    .param p2, "mode"    # I

    .line 72
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 73
    .local v3, "target":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    iget v4, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    if-ne v4, p2, :cond_0

    iget v4, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskId:I

    if-ne v4, p1, :cond_0

    .line 74
    const/4 v0, 0x1

    return v0

    .line 72
    .end local v3    # "target":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 77
    :cond_1
    return v1
.end method
