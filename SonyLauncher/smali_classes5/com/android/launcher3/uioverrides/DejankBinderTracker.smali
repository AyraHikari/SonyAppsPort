.class public Lcom/android/launcher3/uioverrides/DejankBinderTracker;
.super Ljava/lang/Object;
.source "DejankBinderTracker.java"

# interfaces
.implements Landroid/os/Binder$ProxyTransactListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "DejankBinderTracker"

.field private static final sLock:Ljava/lang/Object;

.field private static sTemporarilyIgnoreTracking:Z

.field private static sTrackingAllowed:Z

.field private static final sWhitelistedFrameworkClasses:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIsTracking:Z

.field private mUnexpectedTransactionCallback:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher3/uioverrides/DejankBinderTracker;->sLock:Ljava/lang/Object;

    .line 42
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/launcher3/uioverrides/DejankBinderTracker;->sWhitelistedFrameworkClasses:Ljava/util/HashSet;

    .line 45
    const-string v1, "android.view.IWindowSession"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 46
    const-string v1, "android.os.IPowerManager"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 48
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher3/uioverrides/DejankBinderTracker;->sTemporarilyIgnoreTracking:Z

    .line 51
    sput-boolean v0, Lcom/android/launcher3/uioverrides/DejankBinderTracker;->sTrackingAllowed:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/function/BiConsumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 93
    .local p1, "unexpectedTransactionCallback":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/uioverrides/DejankBinderTracker;->mIsTracking:Z

    .line 94
    iput-object p1, p0, Lcom/android/launcher3/uioverrides/DejankBinderTracker;->mUnexpectedTransactionCallback:Ljava/util/function/BiConsumer;

    .line 95
    return-void
.end method

.method public static allowBinderTrackingInTests()V
    .locals 1

    .line 82
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher3/uioverrides/DejankBinderTracker;->sTrackingAllowed:Z

    .line 83
    return-void
.end method

.method public static disallowBinderTrackingInTests()V
    .locals 1

    .line 90
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher3/uioverrides/DejankBinderTracker;->sTrackingAllowed:Z

    .line 91
    return-void
.end method

.method public static isMainThread()Z
    .locals 2

    .line 157
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static whitelistIpcs(Ljava/util/function/Supplier;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 71
    .local p0, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TT;>;"
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher3/uioverrides/DejankBinderTracker;->sTemporarilyIgnoreTracking:Z

    .line 72
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    .line 73
    .local v0, "value":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/launcher3/uioverrides/DejankBinderTracker;->sTemporarilyIgnoreTracking:Z

    .line 74
    return-object v0
.end method

.method public static whitelistIpcs(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .line 61
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher3/uioverrides/DejankBinderTracker;->sTemporarilyIgnoreTracking:Z

    .line 62
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 63
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher3/uioverrides/DejankBinderTracker;->sTemporarilyIgnoreTracking:Z

    .line 64
    return-void
.end method


# virtual methods
.method public onTransactEnded(Ljava/lang/Object;)V
    .locals 0
    .param p1, "session"    # Ljava/lang/Object;

    .line 154
    return-void
.end method

.method public onTransactStarted(Landroid/os/IBinder;I)Ljava/lang/Object;
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "transactionCode"    # I

    .line 148
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized onTransactStarted(Landroid/os/IBinder;II)Ljava/lang/Object;
    .locals 4
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "transactionCode"    # I
    .param p3, "flags"    # I

    monitor-enter p0

    .line 122
    :try_start_0
    iget-boolean v0, p0, Lcom/android/launcher3/uioverrides/DejankBinderTracker;->mIsTracking:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/launcher3/uioverrides/DejankBinderTracker;->sTrackingAllowed:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/launcher3/uioverrides/DejankBinderTracker;->sTemporarilyIgnoreTracking:Z

    if-nez v0, :cond_2

    and-int/lit8 v0, p3, 0x1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    .line 126
    invoke-static {}, Lcom/android/launcher3/uioverrides/DejankBinderTracker;->isMainThread()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    goto :goto_1

    .line 132
    :cond_0
    :try_start_1
    invoke-interface {p1}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "descriptor":Ljava/lang/String;
    sget-object v2, Lcom/android/launcher3/uioverrides/DejankBinderTracker;->sWhitelistedFrameworkClasses:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    .line 134
    monitor-exit p0

    return-object v1

    .line 139
    :cond_1
    goto :goto_0

    .line 136
    .end local v0    # "descriptor":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/launcher3/uioverrides/DejankBinderTracker;
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 138
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 141
    .local v0, "descriptor":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/uioverrides/DejankBinderTracker;->mUnexpectedTransactionCallback:Ljava/util/function/BiConsumer;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 142
    monitor-exit p0

    return-object v1

    .line 127
    .end local v0    # "descriptor":Ljava/lang/String;
    :cond_2
    :goto_1
    monitor-exit p0

    return-object v1

    .line 121
    .end local p1    # "binder":Landroid/os/IBinder;
    .end local p2    # "transactionCode":I
    .end local p3    # "flags":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public startTracking()V
    .locals 3

    .line 99
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "debug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string v1, "DejankBinderTracker"

    const-string v2, "Unexpected use of binder tracker in non-debug build"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    return-void

    .line 104
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/uioverrides/DejankBinderTracker;->mIsTracking:Z

    if-eqz v0, :cond_1

    .line 105
    return-void

    .line 107
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/uioverrides/DejankBinderTracker;->mIsTracking:Z

    .line 108
    invoke-static {p0}, Landroid/os/Binder;->setProxyTransactListener(Landroid/os/Binder$ProxyTransactListener;)V

    .line 109
    return-void
.end method

.method public stopTracking()V
    .locals 1

    .line 113
    iget-boolean v0, p0, Lcom/android/launcher3/uioverrides/DejankBinderTracker;->mIsTracking:Z

    if-nez v0, :cond_0

    .line 114
    return-void

    .line 116
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/uioverrides/DejankBinderTracker;->mIsTracking:Z

    .line 117
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Binder;->setProxyTransactListener(Landroid/os/Binder$ProxyTransactListener;)V

    .line 118
    return-void
.end method
