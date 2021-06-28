.class public Lcom/sonyericsson/music/search/SearchHandler;
.super Landroid/os/Handler;
.source "SearchHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/search/SearchHandler$SearchObject;,
        Lcom/sonyericsson/music/search/SearchHandler$OnSearch;
    }
.end annotation


# static fields
.field public static final SEARCH:I = 0x0

.field public static final SHUTDOWN:I = 0x1


# instance fields
.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mMainHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/os/HandlerThread;)V
    .locals 2

    .line 61
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 27
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sonyericsson/music/search/SearchHandler;->mMainHandler:Landroid/os/Handler;

    .line 62
    iput-object p1, p0, Lcom/sonyericsson/music/search/SearchHandler;->mHandlerThread:Landroid/os/HandlerThread;

    return-void
.end method

.method public static newInstance()Lcom/sonyericsson/music/search/SearchHandler;
    .locals 2

    .line 55
    new-instance v0, Landroid/os/HandlerThread;

    const-class v1, Lcom/sonyericsson/music/search/SearchHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 57
    new-instance v1, Lcom/sonyericsson/music/search/SearchHandler;

    invoke-direct {v1, v0}, Lcom/sonyericsson/music/search/SearchHandler;-><init>(Landroid/os/HandlerThread;)V

    return-object v1
.end method

.method private search(Ljava/lang/String;Lcom/sonyericsson/music/search/SearchHandler$OnSearch;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 112
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchHandler;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/music/search/SearchHandler$2;

    invoke-direct {v1, p0, p2}, Lcom/sonyericsson/music/search/SearchHandler$2;-><init>(Lcom/sonyericsson/music/search/SearchHandler;Lcom/sonyericsson/music/search/SearchHandler$OnSearch;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 119
    invoke-interface {p2, p1}, Lcom/sonyericsson/music/search/SearchHandler$OnSearch;->doSearch(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 121
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchHandler;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/music/search/SearchHandler$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/sonyericsson/music/search/SearchHandler$3;-><init>(Lcom/sonyericsson/music/search/SearchHandler;Lcom/sonyericsson/music/search/SearchHandler$OnSearch;Landroid/database/Cursor;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 94
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 105
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 101
    :pswitch_0
    iget-object p1, p0, Lcom/sonyericsson/music/search/SearchHandler;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->quit()Z

    goto :goto_0

    .line 96
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sonyericsson/music/search/SearchHandler$SearchObject;

    .line 97
    invoke-virtual {p1}, Lcom/sonyericsson/music/search/SearchHandler$SearchObject;->getSearchString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonyericsson/music/search/SearchHandler$SearchObject;->getSearchCallback()Lcom/sonyericsson/music/search/SearchHandler$OnSearch;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/music/search/SearchHandler;->search(Ljava/lang/String;Lcom/sonyericsson/music/search/SearchHandler$OnSearch;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public shutdown()V
    .locals 1

    const/4 v0, 0x0

    .line 87
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 89
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public startSearch(Ljava/lang/String;Lcom/sonyericsson/music/search/SearchHandler$OnSearch;)V
    .locals 3

    const/4 v0, 0x0

    .line 66
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 72
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 73
    new-instance v1, Lcom/sonyericsson/music/search/SearchHandler$SearchObject;

    invoke-direct {v1, p1, p2}, Lcom/sonyericsson/music/search/SearchHandler$SearchObject;-><init>(Ljava/lang/String;Lcom/sonyericsson/music/search/SearchHandler$OnSearch;)V

    .line 74
    invoke-static {p0, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 75
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 76
    iget-object p1, p0, Lcom/sonyericsson/music/search/SearchHandler;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sonyericsson/music/search/SearchHandler$1;

    invoke-direct {v0, p0, p2}, Lcom/sonyericsson/music/search/SearchHandler$1;-><init>(Lcom/sonyericsson/music/search/SearchHandler;Lcom/sonyericsson/music/search/SearchHandler$OnSearch;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method
