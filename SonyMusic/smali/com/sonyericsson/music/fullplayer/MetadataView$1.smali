.class Lcom/sonyericsson/music/fullplayer/MetadataView$1;
.super Lcom/sonyericsson/music/fullplayer/MetadataView$IsFavoriteTask;
.source "MetadataView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/fullplayer/MetadataView;->updateIndicator(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/fullplayer/MetadataView;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/fullplayer/MetadataView;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/sonyericsson/music/fullplayer/MetadataView$1;->this$0:Lcom/sonyericsson/music/fullplayer/MetadataView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/sonyericsson/music/fullplayer/MetadataView$IsFavoriteTask;-><init>(Lcom/sonyericsson/music/fullplayer/MetadataView$1;)V

    return-void
.end method


# virtual methods
.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1

    .line 189
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/MetadataView$1;->this$0:Lcom/sonyericsson/music/fullplayer/MetadataView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/fullplayer/MetadataView;->setFavoriteIndicator(Z)V

    .line 192
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/MetadataView$1;->this$0:Lcom/sonyericsson/music/fullplayer/MetadataView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sonyericsson/music/fullplayer/MetadataView;->access$102(Lcom/sonyericsson/music/fullplayer/MetadataView;Lcom/sonyericsson/music/fullplayer/MetadataView$IsFavoriteTask;)Lcom/sonyericsson/music/fullplayer/MetadataView$IsFavoriteTask;

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 186
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/fullplayer/MetadataView$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
