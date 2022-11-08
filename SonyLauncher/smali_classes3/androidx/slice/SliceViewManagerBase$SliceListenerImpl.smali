.class Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;
.super Ljava/lang/Object;
.source "SliceViewManagerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/SliceViewManagerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SliceListenerImpl"
.end annotation


# instance fields
.field final mCallback:Landroidx/slice/SliceViewManager$SliceCallback;

.field final mExecutor:Ljava/util/concurrent/Executor;

.field private final mObserver:Landroid/database/ContentObserver;

.field private mPinned:Z

.field final mUpdateSlice:Ljava/lang/Runnable;

.field mUri:Landroid/net/Uri;

.field final synthetic this$0:Landroidx/slice/SliceViewManagerBase;


# direct methods
.method constructor <init>(Landroidx/slice/SliceViewManagerBase;Landroid/net/Uri;Ljava/util/concurrent/Executor;Landroidx/slice/SliceViewManager$SliceCallback;)V
    .locals 2
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "callback"    # Landroidx/slice/SliceViewManager$SliceCallback;

    .line 95
    iput-object p1, p0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->this$0:Landroidx/slice/SliceViewManagerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance p1, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl$1;

    invoke-direct {p1, p0}, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl$1;-><init>(Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;)V

    iput-object p1, p0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->mUpdateSlice:Ljava/lang/Runnable;

    .line 144
    new-instance p1, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl$2;

    new-instance v0, Landroid/os/Handler;

    .line 145
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p0, v0}, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl$2;-><init>(Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;Landroid/os/Handler;)V

    iput-object p1, p0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->mObserver:Landroid/database/ContentObserver;

    .line 96
    iput-object p2, p0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->mUri:Landroid/net/Uri;

    .line 97
    iput-object p3, p0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->mExecutor:Ljava/util/concurrent/Executor;

    .line 98
    iput-object p4, p0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->mCallback:Landroidx/slice/SliceViewManager$SliceCallback;

    .line 99
    return-void
.end method


# virtual methods
.method startListening()V
    .locals 5

    .line 102
    iget-object v0, p0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->this$0:Landroidx/slice/SliceViewManagerBase;

    iget-object v0, v0, Landroidx/slice/SliceViewManagerBase;->mContext:Landroid/content/Context;

    .line 103
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 104
    .local v0, "provider":Landroid/content/ContentProviderClient;
    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 106
    iget-object v1, p0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->this$0:Landroidx/slice/SliceViewManagerBase;

    iget-object v1, v1, Landroidx/slice/SliceViewManagerBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->mUri:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 107
    invoke-virtual {p0}, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->tryPin()V

    .line 109
    :cond_0
    return-void
.end method

.method stopListening()V
    .locals 2

    .line 123
    iget-object v0, p0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->this$0:Landroidx/slice/SliceViewManagerBase;

    iget-object v0, v0, Landroidx/slice/SliceViewManagerBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 124
    iget-boolean v0, p0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->mPinned:Z

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->this$0:Landroidx/slice/SliceViewManagerBase;

    iget-object v1, p0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroidx/slice/SliceViewManagerBase;->unpinSlice(Landroid/net/Uri;)V

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->mPinned:Z

    .line 128
    :cond_0
    return-void
.end method

.method tryPin()V
    .locals 2

    .line 112
    iget-boolean v0, p0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->mPinned:Z

    if-nez v0, :cond_0

    .line 114
    :try_start_0
    iget-object v0, p0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->this$0:Landroidx/slice/SliceViewManagerBase;

    iget-object v1, p0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroidx/slice/SliceViewManagerBase;->pinSlice(Landroid/net/Uri;)V

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->mPinned:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 120
    :cond_0
    :goto_0
    return-void
.end method
