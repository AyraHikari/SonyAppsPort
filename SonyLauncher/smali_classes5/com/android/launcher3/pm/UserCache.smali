.class public Lcom/android/launcher3/pm/UserCache;
.super Ljava/lang/Object;
.source "UserCache.java"


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/MainThreadInitializedObject<",
            "Lcom/android/launcher3/pm/UserCache;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mUserChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserChangeReceiver:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

.field private final mUserManager:Landroid/os/UserManager;

.field private mUserToSerialMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/UserHandle;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mUsers:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$UIrX6UKbSZYvgA7wUshqWkIKZkY(Landroid/content/Context;)Lcom/android/launcher3/pm/UserCache;
    .locals 1

    new-instance v0, Lcom/android/launcher3/pm/UserCache;

    invoke-direct {v0, p0}, Lcom/android/launcher3/pm/UserCache;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$zu1GNRG_zl1pJdIxkVp1lPzVZaM(Lcom/android/launcher3/pm/UserCache;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/pm/UserCache;->onUsersChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Lcom/android/launcher3/util/MainThreadInitializedObject;

    new-instance v1, Lcom/android/launcher3/pm/UserCache$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/launcher3/pm/UserCache$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;-><init>(Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/pm/UserCache;->mUserChangeListeners:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    new-instance v1, Lcom/android/launcher3/pm/UserCache$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/pm/UserCache$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/pm/UserCache;)V

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/SimpleBroadcastReceiver;-><init>(Ljava/util/function/Consumer;)V

    iput-object v0, p0, Lcom/android/launcher3/pm/UserCache;->mUserChangeReceiver:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    .line 54
    iput-object p1, p0, Lcom/android/launcher3/pm/UserCache;->mContext:Landroid/content/Context;

    .line 55
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/launcher3/pm/UserCache;->mUserManager:Landroid/os/UserManager;

    .line 56
    return-void
.end method

.method private enableAndResetCache()V
    .locals 7

    .line 81
    monitor-enter p0

    .line 82
    :try_start_0
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/pm/UserCache;->mUsers:Landroid/util/LongSparseArray;

    .line 83
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/pm/UserCache;->mUserToSerialMap:Landroid/util/ArrayMap;

    .line 84
    iget-object v0, p0, Lcom/android/launcher3/pm/UserCache;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    .line 85
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    if-eqz v0, :cond_0

    .line 86
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 87
    .local v2, "user":Landroid/os/UserHandle;
    iget-object v3, p0, Lcom/android/launcher3/pm/UserCache;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, v2}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v3

    .line 88
    .local v3, "serial":J
    iget-object v5, p0, Lcom/android/launcher3/pm/UserCache;->mUsers:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v3, v4, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 89
    iget-object v5, p0, Lcom/android/launcher3/pm/UserCache;->mUserToSerialMap:Landroid/util/ArrayMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    nop

    .end local v2    # "user":Landroid/os/UserHandle;
    .end local v3    # "serial":J
    goto :goto_0

    .line 92
    .end local v0    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    :cond_0
    monitor-exit p0

    .line 93
    return-void

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onUsersChanged(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 59
    invoke-direct {p0}, Lcom/android/launcher3/pm/UserCache;->enableAndResetCache()V

    .line 60
    iget-object v0, p0, Lcom/android/launcher3/pm/UserCache;->mUserChangeListeners:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/launcher3/pm/UserCache$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/launcher3/pm/UserCache$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 61
    return-void
.end method

.method private removeUserChangeListener(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "command"    # Ljava/lang/Runnable;

    .line 96
    monitor-enter p0

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/pm/UserCache;->mUserChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 98
    iget-object v0, p0, Lcom/android/launcher3/pm/UserCache;->mUserChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/launcher3/pm/UserCache;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/launcher3/pm/UserCache;->mUserChangeReceiver:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/pm/UserCache;->mUsers:Landroid/util/LongSparseArray;

    .line 103
    iput-object v0, p0, Lcom/android/launcher3/pm/UserCache;->mUserToSerialMap:Landroid/util/ArrayMap;

    .line 105
    :cond_0
    monitor-exit p0

    .line 106
    return-void

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public addUserChangeListener(Ljava/lang/Runnable;)Lcom/android/launcher3/util/SafeCloseable;
    .locals 4
    .param p1, "command"    # Ljava/lang/Runnable;

    .line 67
    monitor-enter p0

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/pm/UserCache;->mUserChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/launcher3/pm/UserCache;->mUserChangeReceiver:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    iget-object v1, p0, Lcom/android/launcher3/pm/UserCache;->mContext:Landroid/content/Context;

    const-string v2, "android.intent.action.MANAGED_PROFILE_ADDED"

    const-string v3, "android.intent.action.MANAGED_PROFILE_REMOVED"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/SimpleBroadcastReceiver;->register(Landroid/content/Context;[Ljava/lang/String;)V

    .line 73
    invoke-direct {p0}, Lcom/android/launcher3/pm/UserCache;->enableAndResetCache()V

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/pm/UserCache;->mUserChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v0, Lcom/android/launcher3/pm/UserCache$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/pm/UserCache$$ExternalSyntheticLambda3;-><init>(Lcom/android/launcher3/pm/UserCache;Ljava/lang/Runnable;)V

    monitor-exit p0

    return-object v0

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSerialNumberForUser(Landroid/os/UserHandle;)J
    .locals 3
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 112
    monitor-enter p0

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/pm/UserCache;->mUserToSerialMap:Landroid/util/ArrayMap;

    if-eqz v0, :cond_1

    .line 114
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 115
    .local v0, "serial":Ljava/lang/Long;
    if-nez v0, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_0
    monitor-exit p0

    return-wide v1

    .line 117
    .end local v0    # "serial":Ljava/lang/Long;
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    iget-object v0, p0, Lcom/android/launcher3/pm/UserCache;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v0

    return-wide v0

    .line 117
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getUserForSerialNumber(J)Landroid/os/UserHandle;
    .locals 1
    .param p1, "serialNumber"    # J

    .line 125
    monitor-enter p0

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/pm/UserCache;->mUsers:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    monitor-exit p0

    return-object v0

    .line 129
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    iget-object v0, p0, Lcom/android/launcher3/pm/UserCache;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1, p2}, Landroid/os/UserManager;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0

    .line 129
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getUserProfiles()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .line 137
    monitor-enter p0

    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/pm/UserCache;->mUsers:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_0

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher3/pm/UserCache;->mUserToSerialMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit p0

    return-object v0

    .line 141
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    iget-object v0, p0, Lcom/android/launcher3/pm/UserCache;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    .line 144
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    return-object v1

    .line 141
    .end local v0    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method synthetic lambda$addUserChangeListener$0$com-android-launcher3-pm-UserCache(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "command"    # Ljava/lang/Runnable;

    .line 76
    invoke-direct {p0, p1}, Lcom/android/launcher3/pm/UserCache;->removeUserChangeListener(Ljava/lang/Runnable;)V

    return-void
.end method
