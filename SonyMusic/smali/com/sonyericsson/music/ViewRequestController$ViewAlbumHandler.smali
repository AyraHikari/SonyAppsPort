.class Lcom/sonyericsson/music/ViewRequestController$ViewAlbumHandler;
.super Lcom/sonyericsson/music/ViewRequestController$IntentHandler;
.source "ViewRequestController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/ViewRequestController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewAlbumHandler"
.end annotation


# direct methods
.method public constructor <init>(Lcom/sonyericsson/music/MusicActivity;Landroid/content/Intent;)V
    .locals 0

    .line 305
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/ViewRequestController$IntentHandler;-><init>(Lcom/sonyericsson/music/MusicActivity;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public runIntent()V
    .locals 3

    .line 310
    new-instance v0, Lcom/sonyericsson/music/ViewRequestController$ViewAlbumHandler$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/ViewRequestController$ViewAlbumHandler$1;-><init>(Lcom/sonyericsson/music/ViewRequestController$ViewAlbumHandler;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 341
    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
