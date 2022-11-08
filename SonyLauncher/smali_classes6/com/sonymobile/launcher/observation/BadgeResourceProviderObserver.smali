.class public Lcom/sonymobile/launcher/observation/BadgeResourceProviderObserver;
.super Ljava/lang/Object;
.source "BadgeResourceProviderObserver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BadgeResourceProviderObserver"


# instance fields
.field private mCallback:Lcom/sonymobile/launcher/observation/IBadgeCountManager$IObserverCallback;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mObserverRegistered:Z

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method static bridge synthetic -$$Nest$mgetAllBadge(Lcom/sonymobile/launcher/observation/BadgeResourceProviderObserver;)Ljava/util/Set;
    .locals 0

    invoke-direct {p0}, Lcom/sonymobile/launcher/observation/BadgeResourceProviderObserver;->getAllBadge()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mnotifyBadge(Lcom/sonymobile/launcher/observation/BadgeResourceProviderObserver;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonymobile/launcher/observation/BadgeResourceProviderObserver;->notifyBadge(Ljava/util/Set;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyBadgeCount(Lcom/sonymobile/launcher/observation/BadgeResourceProviderObserver;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonymobile/launcher/observation/BadgeResourceProviderObserver;->notifyBadgeCount()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/launcher/observation/IBadgeCountManager$IObserverCallback;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/sonymobile/launcher/observation/IBadgeCountManager$IObserverCallback;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/launcher/observation/BadgeResourceProviderObserver;->mObserverRegistered:Z

    .line 37
    new-instance v0, Lcom/sonymobile/launcher/observation/BadgeResourceProviderObserver$1;

    new-instance v1, Landroid/os/Handler;

    .line 38
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/launcher/observation/BadgeResourceProviderObserver$1;-><init>(Lcom/sonymobile/launcher/observation/BadgeResourceProviderObserver;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sonymobile/launcher/observation/BadgeResourceProviderObserver;->mContentObserver:Landroid/database/ContentObserver;

    .line 53
    if-eqz p1, :cond_0

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/launcher/observation/BadgeResourceProviderObserver;->mResolver:Landroid/content/ContentResolver;

    .line 56
    :cond_0
    iput-object p2, p0, Lcom/sonymobile/launcher/observation/BadgeResourceProviderObserver;->mCallback:Lcom/sonymobile/launcher/observation/IBadgeCountManager$IObserverCallback;

    .line 57
    return-void
.end method

.method private getAllBadge()Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/sonymobile/launcher/badge/SonyBadgeInfo;",
            ">;"
        }
    .end annotation

    .line 105
    const/4 v0, 0x0

    .line 106
    .local v0, "cursor":Landroid/database/Cursor;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 108
    .local v1, "badges":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/launcher/badge/SonyBadgeInfo;>;"
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/launcher/observation/BadgeResourceProviderObserver;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/sonymobile/launcher/provider/BadgeProviderContract;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v0, v2

    .line 109
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 111
    :cond_0
    const-string v2, "package_name"

    .line 112
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 111
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, "pkg":Ljava/lang/String;
    const-string v3, "badge_count"

    .line 114
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 113
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 117
    .local v3, "count":I
    new-instance v4, Lcom/android/launcher3/util/PackageUserKey;

    .line 118
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 119
    .local v4, "postedPackageUserKey":Lcom/android/launcher3/util/PackageUserKey;
    new-instance v5, Lcom/sonymobile/launcher/badge/SonyBadgeInfo;

    invoke-direct {v5, v4}, Lcom/sonymobile/launcher/badge/SonyBadgeInfo;-><init>(Lcom/android/launcher3/util/PackageUserKey;)V

    .line 120
    .local v5, "sonyBadgeInfo":Lcom/sonymobile/launcher/badge/SonyBadgeInfo;
    invoke-virtual {v5, v3}, Lcom/sonymobile/launcher/badge/SonyBadgeInfo;->setTotalCount(I)V

    .line 121
    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 122
    nop

    .end local v2    # "pkg":Ljava/lang/String;
    .end local v3    # "count":I
    .end local v4    # "postedPackageUserKey":Lcom/android/launcher3/util/PackageUserKey;
    .end local v5    # "sonyBadgeInfo":Lcom/sonymobile/launcher/badge/SonyBadgeInfo;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 127
    :cond_1
    if-eqz v0, :cond_2

    .line 128
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 127
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 124
    :catch_0
    move-exception v2

    .line 125
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "BadgeResourceProviderObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    nop

    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_2

    .line 128
    goto :goto_0

    .line 131
    :cond_2
    :goto_1
    return-object v1

    .line 127
    :goto_2
    if-eqz v0, :cond_3

    .line 128
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 130
    :cond_3
    throw v2
.end method

.method private notifyBadge(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sonymobile/launcher/badge/SonyBadgeInfo;",
            ">;)V"
        }
    .end annotation

    .line 135
    .local p1, "badges":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/launcher/badge/SonyBadgeInfo;>;"
    iget-object v0, p0, Lcom/sonymobile/launcher/observation/BadgeResourceProviderObserver;->mCallback:Lcom/sonymobile/launcher/observation/IBadgeCountManager$IObserverCallback;

    if-eqz v0, :cond_0

    .line 136
    invoke-interface {v0, p1}, Lcom/sonymobile/launcher/observation/IBadgeCountManager$IObserverCallback;->updateBadgeCount(Ljava/util/Set;)V

    .line 138
    :cond_0
    return-void
.end method

.method private notifyBadgeCount()V
    .locals 2

    .line 91
    new-instance v0, Lcom/sonymobile/launcher/observation/BadgeResourceProviderObserver$2;

    invoke-direct {v0, p0}, Lcom/sonymobile/launcher/observation/BadgeResourceProviderObserver$2;-><init>(Lcom/sonymobile/launcher/observation/BadgeResourceProviderObserver;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 100
    invoke-virtual {v0, v1}, Lcom/sonymobile/launcher/observation/BadgeResourceProviderObserver$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 101
    return-void
.end method


# virtual methods
.method public register()V
    .locals 4

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/launcher/observation/BadgeResourceProviderObserver;->mResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_1

    .line 68
    iget-boolean v1, p0, Lcom/sonymobile/launcher/observation/BadgeResourceProviderObserver;->mObserverRegistered:Z

    if-nez v1, :cond_0

    .line 69
    sget-object v1, Lcom/sonymobile/launcher/provider/BadgeProviderContract;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sonymobile/launcher/observation/BadgeResourceProviderObserver;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/launcher/observation/BadgeResourceProviderObserver;->mObserverRegistered:Z

    .line 73
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/launcher/observation/BadgeResourceProviderObserver;->notifyBadgeCount()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :cond_1
    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BadgeResourceProviderObserver"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .end local v0    # "e":Ljava/lang/SecurityException;
    :goto_0
    return-void
.end method

.method public removeCallback()V
    .locals 1

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/launcher/observation/BadgeResourceProviderObserver;->mCallback:Lcom/sonymobile/launcher/observation/IBadgeCountManager$IObserverCallback;

    .line 142
    return-void
.end method

.method public unregister()V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/sonymobile/launcher/observation/BadgeResourceProviderObserver;->mResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/sonymobile/launcher/observation/BadgeResourceProviderObserver;->mObserverRegistered:Z

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/sonymobile/launcher/observation/BadgeResourceProviderObserver;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/launcher/observation/BadgeResourceProviderObserver;->mObserverRegistered:Z

    .line 88
    :cond_0
    return-void
.end method
