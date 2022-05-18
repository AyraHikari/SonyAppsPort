.class Lcom/sonyericsson/music/MusicActivity$3$1$1;
.super Ljava/lang/Object;
.source "MusicActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/MusicActivity$3$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sonyericsson/music/MusicActivity$3$1;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/MusicActivity$3$1;)V
    .locals 0

    .line 420
    iput-object p1, p0, Lcom/sonyericsson/music/MusicActivity$3$1$1;->this$2:Lcom/sonyericsson/music/MusicActivity$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 423
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity$3$1$1;->this$2:Lcom/sonyericsson/music/MusicActivity$3$1;

    iget-object v0, v0, Lcom/sonyericsson/music/MusicActivity$3$1;->this$1:Lcom/sonyericsson/music/MusicActivity$3;

    iget-object v0, v0, Lcom/sonyericsson/music/MusicActivity$3;->this$0:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->getPlayerController()Lcom/sonyericsson/music/player/PlayerController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 425
    invoke-virtual {v0}, Lcom/sonyericsson/music/player/PlayerController;->loadPlayQueueIfEmpty()V

    :cond_0
    return-void
.end method
