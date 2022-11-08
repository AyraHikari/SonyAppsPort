.class Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$SerializedIconUpdateTask;
.super Ljava/lang/Object;
.source "IconCacheUpdateHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SerializedIconUpdateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private final mAppsToAdd:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mAppsToUpdate:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mCachingLogic:Lcom/android/launcher3/icons/cache/CachingLogic;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/icons/cache/CachingLogic<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mOnUpdateCallback:Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$OnUpdateCallback;

.field private final mUpdatedPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserHandle:Landroid/os/UserHandle;

.field private final mUserSerial:J

.field final synthetic this$0:Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;


# direct methods
.method constructor <init>(Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;JLandroid/os/UserHandle;Ljava/util/Stack;Ljava/util/Stack;Lcom/android/launcher3/icons/cache/CachingLogic;Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$OnUpdateCallback;)V
    .locals 0
    .param p2, "userSerial"    # J
    .param p4, "userHandle"    # Landroid/os/UserHandle;
    .param p8, "onUpdateCallback"    # Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$OnUpdateCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/os/UserHandle;",
            "Ljava/util/Stack<",
            "TT;>;",
            "Ljava/util/Stack<",
            "TT;>;",
            "Lcom/android/launcher3/icons/cache/CachingLogic<",
            "TT;>;",
            "Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$OnUpdateCallback;",
            ")V"
        }
    .end annotation

    .line 260
    .local p0, "this":Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$SerializedIconUpdateTask;, "Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$SerializedIconUpdateTask<TT;>;"
    .local p5, "appsToAdd":Ljava/util/Stack;, "Ljava/util/Stack<TT;>;"
    .local p6, "appsToUpdate":Ljava/util/Stack;, "Ljava/util/Stack<TT;>;"
    .local p7, "cachingLogic":Lcom/android/launcher3/icons/cache/CachingLogic;, "Lcom/android/launcher3/icons/cache/CachingLogic<TT;>;"
    iput-object p1, p0, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$SerializedIconUpdateTask;->this$0:Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$SerializedIconUpdateTask;->mUpdatedPackages:Ljava/util/HashSet;

    .line 261
    iput-object p4, p0, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$SerializedIconUpdateTask;->mUserHandle:Landroid/os/UserHandle;

    .line 262
    iput-wide p2, p0, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$SerializedIconUpdateTask;->mUserSerial:J

    .line 263
    iput-object p5, p0, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$SerializedIconUpdateTask;->mAppsToAdd:Ljava/util/Stack;

    .line 264
    iput-object p6, p0, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$SerializedIconUpdateTask;->mAppsToUpdate:Ljava/util/Stack;

    .line 265
    iput-object p7, p0, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$SerializedIconUpdateTask;->mCachingLogic:Lcom/android/launcher3/icons/cache/CachingLogic;

    .line 266
    iput-object p8, p0, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$SerializedIconUpdateTask;->mOnUpdateCallback:Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$OnUpdateCallback;

    .line 267
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 271
    .local p0, "this":Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$SerializedIconUpdateTask;, "Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$SerializedIconUpdateTask<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$SerializedIconUpdateTask;->mAppsToUpdate:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$SerializedIconUpdateTask;->mAppsToUpdate:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    .line 273
    .local v0, "app":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$SerializedIconUpdateTask;->mCachingLogic:Lcom/android/launcher3/icons/cache/CachingLogic;

    invoke-interface {v1, v0}, Lcom/android/launcher3/icons/cache/CachingLogic;->getComponent(Ljava/lang/Object;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 274
    .local v8, "pkg":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$SerializedIconUpdateTask;->this$0:Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;

    invoke-static {v1}, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->-$$Nest$fgetmPkgInfoMap(Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/content/pm/PackageInfo;

    .line 276
    .local v9, "info":Landroid/content/pm/PackageInfo;
    iget-object v1, p0, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$SerializedIconUpdateTask;->this$0:Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;

    invoke-static {v1}, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->-$$Nest$fgetmIconCache(Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;)Lcom/android/launcher3/icons/cache/BaseIconCache;

    move-result-object v1

    iget-object v3, p0, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$SerializedIconUpdateTask;->mCachingLogic:Lcom/android/launcher3/icons/cache/CachingLogic;

    iget-wide v5, p0, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$SerializedIconUpdateTask;->mUserSerial:J

    const/4 v7, 0x1

    move-object v2, v0

    move-object v4, v9

    invoke-virtual/range {v1 .. v7}, Lcom/android/launcher3/icons/cache/BaseIconCache;->addIconToDBAndMemCache(Ljava/lang/Object;Lcom/android/launcher3/icons/cache/CachingLogic;Landroid/content/pm/PackageInfo;JZ)V

    .line 278
    iget-object v1, p0, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$SerializedIconUpdateTask;->mUpdatedPackages:Ljava/util/HashSet;

    invoke-virtual {v1, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 280
    iget-object v1, p0, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$SerializedIconUpdateTask;->mAppsToUpdate:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$SerializedIconUpdateTask;->mUpdatedPackages:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 282
    iget-object v1, p0, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$SerializedIconUpdateTask;->mOnUpdateCallback:Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$OnUpdateCallback;

    iget-object v2, p0, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$SerializedIconUpdateTask;->mUpdatedPackages:Ljava/util/HashSet;

    iget-object v3, p0, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$SerializedIconUpdateTask;->mUserHandle:Landroid/os/UserHandle;

    invoke-interface {v1, v2, v3}, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$OnUpdateCallback;->onPackageIconsUpdated(Ljava/util/HashSet;Landroid/os/UserHandle;)V

    .line 286
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$SerializedIconUpdateTask;->scheduleNext()V

    .end local v0    # "app":Ljava/lang/Object;, "TT;"
    .end local v8    # "pkg":Ljava/lang/String;
    .end local v9    # "info":Landroid/content/pm/PackageInfo;
    goto :goto_0

    .line 287
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$SerializedIconUpdateTask;->mAppsToAdd:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 288
    iget-object v0, p0, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$SerializedIconUpdateTask;->mAppsToAdd:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    .line 289
    .restart local v0    # "app":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$SerializedIconUpdateTask;->this$0:Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;

    invoke-static {v1}, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->-$$Nest$fgetmPkgInfoMap(Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$SerializedIconUpdateTask;->mCachingLogic:Lcom/android/launcher3/icons/cache/CachingLogic;

    invoke-interface {v2, v0}, Lcom/android/launcher3/icons/cache/CachingLogic;->getComponent(Ljava/lang/Object;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/content/pm/PackageInfo;

    .line 292
    .local v8, "info":Landroid/content/pm/PackageInfo;
    if-eqz v8, :cond_2

    .line 293
    iget-object v1, p0, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$SerializedIconUpdateTask;->this$0:Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;

    invoke-static {v1}, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->-$$Nest$fgetmIconCache(Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;)Lcom/android/launcher3/icons/cache/BaseIconCache;

    move-result-object v1

    iget-object v3, p0, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$SerializedIconUpdateTask;->mCachingLogic:Lcom/android/launcher3/icons/cache/CachingLogic;

    iget-wide v5, p0, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$SerializedIconUpdateTask;->mUserSerial:J

    const/4 v7, 0x0

    move-object v2, v0

    move-object v4, v8

    invoke-virtual/range {v1 .. v7}, Lcom/android/launcher3/icons/cache/BaseIconCache;->addIconToDBAndMemCache(Ljava/lang/Object;Lcom/android/launcher3/icons/cache/CachingLogic;Landroid/content/pm/PackageInfo;JZ)V

    .line 297
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$SerializedIconUpdateTask;->mAppsToAdd:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 298
    invoke-virtual {p0}, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$SerializedIconUpdateTask;->scheduleNext()V

    goto :goto_1

    .line 287
    .end local v0    # "app":Ljava/lang/Object;, "TT;"
    .end local v8    # "info":Landroid/content/pm/PackageInfo;
    :cond_3
    :goto_0
    nop

    .line 301
    :cond_4
    :goto_1
    return-void
.end method

.method public scheduleNext()V
    .locals 6

    .line 304
    .local p0, "this":Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$SerializedIconUpdateTask;, "Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$SerializedIconUpdateTask<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$SerializedIconUpdateTask;->this$0:Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;

    invoke-static {v0}, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->-$$Nest$fgetmIconCache(Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;)Lcom/android/launcher3/icons/cache/BaseIconCache;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mWorkerHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->-$$Nest$sfgetICON_UPDATE_TOKEN()Ljava/lang/Object;

    move-result-object v1

    .line 305
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    .line 304
    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 306
    return-void
.end method
