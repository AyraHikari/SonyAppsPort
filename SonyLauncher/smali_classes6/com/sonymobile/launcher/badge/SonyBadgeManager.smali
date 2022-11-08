.class public Lcom/sonymobile/launcher/badge/SonyBadgeManager;
.super Ljava/lang/Object;
.source "SonyBadgeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/launcher/badge/SonyBadgeManager$BadgeListener;
    }
.end annotation


# static fields
.field public static final BADGE_MAX_COUNT:I = 0x3e7

.field private static final mSonyBadgeManager:Lcom/sonymobile/launcher/badge/SonyBadgeManager;


# instance fields
.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sonymobile/launcher/badge/SonyBadgeManager$BadgeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mBadgeResourceProviderObserver:Lcom/sonymobile/launcher/observation/BadgeResourceProviderObserver;

.field mChecker:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mObserverCallback:Lcom/sonymobile/launcher/observation/IBadgeCountManager$IObserverCallback;

.field private mRecordedBadges:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            ">;"
        }
    .end annotation
.end field

.field private mRegistered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lcom/sonymobile/launcher/badge/SonyBadgeManager;

    invoke-direct {v0}, Lcom/sonymobile/launcher/badge/SonyBadgeManager;-><init>()V

    sput-object v0, Lcom/sonymobile/launcher/badge/SonyBadgeManager;->mSonyBadgeManager:Lcom/sonymobile/launcher/badge/SonyBadgeManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/launcher/badge/SonyBadgeManager;->listeners:Ljava/util/Set;

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/launcher/badge/SonyBadgeManager;->mHandler:Landroid/os/Handler;

    .line 50
    new-instance v0, Lcom/sonymobile/launcher/badge/SonyBadgeManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/sonymobile/launcher/badge/SonyBadgeManager$$ExternalSyntheticLambda0;-><init>(Lcom/sonymobile/launcher/badge/SonyBadgeManager;)V

    iput-object v0, p0, Lcom/sonymobile/launcher/badge/SonyBadgeManager;->mChecker:Ljava/lang/Runnable;

    .line 59
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/launcher/badge/SonyBadgeManager;->mRecordedBadges:Ljava/util/Set;

    .line 127
    new-instance v0, Lcom/sonymobile/launcher/badge/SonyBadgeManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/sonymobile/launcher/badge/SonyBadgeManager$$ExternalSyntheticLambda1;-><init>(Lcom/sonymobile/launcher/badge/SonyBadgeManager;)V

    iput-object v0, p0, Lcom/sonymobile/launcher/badge/SonyBadgeManager;->mObserverCallback:Lcom/sonymobile/launcher/observation/IBadgeCountManager$IObserverCallback;

    return-void
.end method

.method public static getBadgeTextFromCountLocalized(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "badgeCount"    # I

    .line 169
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x3e7

    if-le p1, v2, :cond_0

    .line 170
    sget v3, Lcom/android/launcher3/R$string;->badge_max_count_format:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 171
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    const-string v0, "%d"

    invoke-static {v2, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 169
    :goto_0
    return-object v0
.end method

.method public static getInstance()Lcom/sonymobile/launcher/badge/SonyBadgeManager;
    .locals 1

    .line 113
    sget-object v0, Lcom/sonymobile/launcher/badge/SonyBadgeManager;->mSonyBadgeManager:Lcom/sonymobile/launcher/badge/SonyBadgeManager;

    return-object v0
.end method

.method private register()V
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/sonymobile/launcher/badge/SonyBadgeManager;->mLauncher:Lcom/android/launcher3/Launcher;

    if-nez v0, :cond_0

    .line 84
    return-void

    .line 86
    :cond_0
    iget-boolean v1, p0, Lcom/sonymobile/launcher/badge/SonyBadgeManager;->mRegistered:Z

    if-nez v1, :cond_1

    .line 87
    new-instance v1, Lcom/sonymobile/launcher/observation/BadgeResourceProviderObserver;

    iget-object v2, p0, Lcom/sonymobile/launcher/badge/SonyBadgeManager;->mObserverCallback:Lcom/sonymobile/launcher/observation/IBadgeCountManager$IObserverCallback;

    invoke-direct {v1, v0, v2}, Lcom/sonymobile/launcher/observation/BadgeResourceProviderObserver;-><init>(Landroid/content/Context;Lcom/sonymobile/launcher/observation/IBadgeCountManager$IObserverCallback;)V

    iput-object v1, p0, Lcom/sonymobile/launcher/badge/SonyBadgeManager;->mBadgeResourceProviderObserver:Lcom/sonymobile/launcher/observation/BadgeResourceProviderObserver;

    .line 89
    invoke-virtual {v1}, Lcom/sonymobile/launcher/observation/BadgeResourceProviderObserver;->register()V

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/launcher/badge/SonyBadgeManager;->mRegistered:Z

    .line 93
    :cond_1
    return-void
.end method

.method private unregister()V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/sonymobile/launcher/badge/SonyBadgeManager;->mBadgeResourceProviderObserver:Lcom/sonymobile/launcher/observation/BadgeResourceProviderObserver;

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0}, Lcom/sonymobile/launcher/observation/BadgeResourceProviderObserver;->unregister()V

    .line 105
    iget-object v0, p0, Lcom/sonymobile/launcher/badge/SonyBadgeManager;->mBadgeResourceProviderObserver:Lcom/sonymobile/launcher/observation/BadgeResourceProviderObserver;

    invoke-virtual {v0}, Lcom/sonymobile/launcher/observation/BadgeResourceProviderObserver;->removeCallback()V

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/launcher/badge/SonyBadgeManager;->mBadgeResourceProviderObserver:Lcom/sonymobile/launcher/observation/BadgeResourceProviderObserver;

    .line 109
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/launcher/badge/SonyBadgeManager;->mRegistered:Z

    .line 110
    return-void
.end method

.method private update()V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/sonymobile/launcher/badge/SonyBadgeManager;->mBadgeResourceProviderObserver:Lcom/sonymobile/launcher/observation/BadgeResourceProviderObserver;

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0}, Lcom/sonymobile/launcher/observation/BadgeResourceProviderObserver;->register()V

    .line 100
    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Lcom/sonymobile/launcher/badge/SonyBadgeManager$BadgeListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sonymobile/launcher/badge/SonyBadgeManager$BadgeListener;

    .line 62
    iget-object v0, p0, Lcom/sonymobile/launcher/badge/SonyBadgeManager;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/sonymobile/launcher/badge/SonyBadgeManager;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_0
    iget-boolean v0, p0, Lcom/sonymobile/launcher/badge/SonyBadgeManager;->mRegistered:Z

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/sonymobile/launcher/badge/SonyBadgeManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/launcher/badge/SonyBadgeManager;->mChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 67
    invoke-direct {p0}, Lcom/sonymobile/launcher/badge/SonyBadgeManager;->update()V

    goto :goto_0

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/launcher/badge/SonyBadgeManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/launcher/badge/SonyBadgeManager;->mChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 70
    iget-object v0, p0, Lcom/sonymobile/launcher/badge/SonyBadgeManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/launcher/badge/SonyBadgeManager;->mChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 72
    :goto_0
    return-void
.end method

.method public destroy()V
    .locals 1

    .line 175
    invoke-direct {p0}, Lcom/sonymobile/launcher/badge/SonyBadgeManager;->unregister()V

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/launcher/badge/SonyBadgeManager;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 177
    iget-object v0, p0, Lcom/sonymobile/launcher/badge/SonyBadgeManager;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 178
    return-void
.end method

.method public init(Lcom/android/launcher3/Launcher;)V
    .locals 0
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 117
    iput-object p1, p0, Lcom/sonymobile/launcher/badge/SonyBadgeManager;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 118
    return-void
.end method

.method synthetic lambda$new$0$com-sonymobile-launcher-badge-SonyBadgeManager()V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/sonymobile/launcher/badge/SonyBadgeManager;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 52
    invoke-direct {p0}, Lcom/sonymobile/launcher/badge/SonyBadgeManager;->unregister()V

    goto :goto_0

    .line 54
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/launcher/badge/SonyBadgeManager;->register()V

    .line 56
    :goto_0
    return-void
.end method

.method synthetic lambda$new$1$com-sonymobile-launcher-badge-SonyBadgeManager(Ljava/util/Set;)V
    .locals 5
    .param p1, "badges"    # Ljava/util/Set;

    .line 129
    iget-object v0, p0, Lcom/sonymobile/launcher/badge/SonyBadgeManager;->mLauncher:Lcom/android/launcher3/Launcher;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 134
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 136
    .local v0, "updatedBadges":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/launcher/badge/SonyBadgeInfo;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/launcher/badge/SonyBadgeInfo;

    .line 137
    .local v2, "badge":Lcom/sonymobile/launcher/badge/SonyBadgeInfo;
    invoke-virtual {v2}, Lcom/sonymobile/launcher/badge/SonyBadgeInfo;->getPackageUserKey()Lcom/android/launcher3/util/PackageUserKey;

    move-result-object v3

    .line 138
    .local v3, "removePkg":Lcom/android/launcher3/util/PackageUserKey;
    iget-object v4, p0, Lcom/sonymobile/launcher/badge/SonyBadgeManager;->mRecordedBadges:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 139
    .end local v2    # "badge":Lcom/sonymobile/launcher/badge/SonyBadgeInfo;
    .end local v3    # "removePkg":Lcom/android/launcher3/util/PackageUserKey;
    goto :goto_0

    .line 146
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/launcher/badge/SonyBadgeManager;->mRecordedBadges:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/util/PackageUserKey;

    .line 147
    .local v2, "updatePkg":Lcom/android/launcher3/util/PackageUserKey;
    new-instance v3, Lcom/sonymobile/launcher/badge/SonyBadgeInfo;

    invoke-direct {v3, v2}, Lcom/sonymobile/launcher/badge/SonyBadgeInfo;-><init>(Lcom/android/launcher3/util/PackageUserKey;)V

    .line 148
    .local v3, "badgeInfo":Lcom/sonymobile/launcher/badge/SonyBadgeInfo;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sonymobile/launcher/badge/SonyBadgeInfo;->setTotalCount(I)V

    .line 149
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 150
    .end local v2    # "updatePkg":Lcom/android/launcher3/util/PackageUserKey;
    .end local v3    # "badgeInfo":Lcom/sonymobile/launcher/badge/SonyBadgeInfo;
    goto :goto_1

    .line 152
    :cond_2
    iget-object v1, p0, Lcom/sonymobile/launcher/badge/SonyBadgeManager;->mRecordedBadges:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 153
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/launcher/badge/SonyBadgeInfo;

    .line 154
    .local v2, "badge":Lcom/sonymobile/launcher/badge/SonyBadgeInfo;
    if-eqz v2, :cond_3

    .line 155
    iget-object v3, p0, Lcom/sonymobile/launcher/badge/SonyBadgeManager;->mRecordedBadges:Ljava/util/Set;

    invoke-virtual {v2}, Lcom/sonymobile/launcher/badge/SonyBadgeInfo;->getPackageUserKey()Lcom/android/launcher3/util/PackageUserKey;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 156
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 158
    .end local v2    # "badge":Lcom/sonymobile/launcher/badge/SonyBadgeInfo;
    :cond_3
    goto :goto_2

    .line 160
    :cond_4
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 161
    iget-object v1, p0, Lcom/sonymobile/launcher/badge/SonyBadgeManager;->listeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/launcher/badge/SonyBadgeManager$BadgeListener;

    .line 162
    .local v2, "listener":Lcom/sonymobile/launcher/badge/SonyBadgeManager$BadgeListener;
    invoke-interface {v2, v0}, Lcom/sonymobile/launcher/badge/SonyBadgeManager$BadgeListener;->updateIconBadges(Ljava/util/Set;)V

    .line 163
    .end local v2    # "listener":Lcom/sonymobile/launcher/badge/SonyBadgeManager$BadgeListener;
    goto :goto_3

    .line 165
    :cond_5
    return-void

    .line 132
    .end local v0    # "updatedBadges":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/launcher/badge/SonyBadgeInfo;>;"
    :cond_6
    :goto_4
    return-void
.end method

.method public removeListener(Lcom/sonymobile/launcher/badge/SonyBadgeManager$BadgeListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sonymobile/launcher/badge/SonyBadgeManager$BadgeListener;

    .line 75
    iget-object v0, p0, Lcom/sonymobile/launcher/badge/SonyBadgeManager;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 76
    iget-object v0, p0, Lcom/sonymobile/launcher/badge/SonyBadgeManager;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/sonymobile/launcher/badge/SonyBadgeManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/launcher/badge/SonyBadgeManager;->mChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 78
    iget-object v0, p0, Lcom/sonymobile/launcher/badge/SonyBadgeManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/launcher/badge/SonyBadgeManager;->mChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 80
    :cond_0
    return-void
.end method
